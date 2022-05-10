module Api
    module V1
        class InvestStatsController < ApplicationController
        before_action :restrict_access

            def index
                total_invested_amount_in_a_venture = Invest.where(venture_id: params[:id])
                render json:{invests: total_invested_amount_in_a_venture}
            end

        end
    end
end