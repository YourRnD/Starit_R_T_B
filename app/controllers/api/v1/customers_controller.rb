module Api
  module V1
    class CustomersController < ApplicationController
      def index
        @customers = Customer.all
          if @customers
            render json: @customers

          else
            render json: {
              status: 500,
              errors: ['no feedbacks found']
            }
          end  
      end

      def create
        customer = Customer.new(customer_params)
        if customer.save
          render json: customer, status: :created
        else
          render json: customer.errors, status: :unprocessable_entity
        end
      end

      def destroy
        Customer.find(params[:id]).destroy!
        head :no_content
      end

      private

      def customer_params
        params.require(:customer).permit(:name, :email, :tel, :deviceid)
      end
    end
  end
end