module Api
    module V1
        class CategoriesController < ApplicationController
            before_action :restrict_access  

            def index 
                categories = Category.all#order('created_at DESC')#.where(approval_status: "false")
                render json:{categories: categories}
            end

            def show
                category = Category.find(params[:id])
                render json:{category: category}
            end

            def create 
                category = Category.new(category_params)
                
                if category.save 
                    render json: {category: category}, status: :created
                else
                    render json: {status: 'Error', message: 'category not saved', data: category.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                category = Category.find(params[:id])
                category.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: category}, status: :ok
                 
            end

            private 

            def category_params
                params.permit(:venture_id, :name, :role, :gender, :bio)
            end
        end      
    end
end