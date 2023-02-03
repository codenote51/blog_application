class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.find(order_params)
    if @order.save
      redirect_to @order
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if update.order(order_params)
      redirect_to @order
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to root_path, status: :see_other
  end 

  private
  def order_params
    params.require(:order).permit(:name, :lastname, :status)
  end
end
