class CustomersController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @customer = @order.customers.create(customer_params)
    redirect_to order_path(@order)
  end

  private

  def comment_params
    params.require(:order).permit(:name, :lastname, :status)
  end
end
