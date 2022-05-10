module Api
    module V1
        class InvestsController < ApplicationController
        before_action :restrict_access
        
        #Returns total amount invested
            def index 
                #invests = Invest.order('created_at DESC')#.where(approval_status: "false")
                @all_invested_amount = Invest.sum(:amount_invested)
                render json:{grand_invested_amount: @all_invested_amount}
            end

            def show
                #returns all investements of a given venture
               investments = Invest.where(venture_id: params[:id])
               total_invested_amount_in_a_venture = investments.sum(:amount_invested)
                render json:{total_investment_in_a_venture: total_invested_amount_in_a_venture}
            end

            def create 

                invest = Invest.new(invest_params)
                ## finds user who has invested
                investor = User.find_by(id: invest.user_id)
                ##Invest's full name
                investor_name = investor.firstname + " " + investor.lastname
                
                
                ##finds venture being invested in 
                venture = Venture.find_by(id: invest.venture_id)

                
                if invest.save 

                    InvestMailer.invest_created(investor_name , investor.email, venture.name, invest.type_of_investment, invest.shares_purchased.to_s, (invest.amount_invested).to_s).deliver
                    render json: {invest: invest}, status: :created
                else
                    render json: {status: 'Error', message: 'invest not saved', data: invest.errors}, status: :unprocessable_entity
                end
            end

            private 
            def invest_params
                params.permit(:user_id, :venture_id, :type_of_investment, :shares_purchased, :amount_invested, :investing_as)
            end
        end      
    end
end