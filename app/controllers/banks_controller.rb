class BanksController < ApplicationController
  layout :banks_layouts
  def index 
    @banks = Bank.all
  end

  def show
    @bank = Bank.find(params[:id])
  end 

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    respond_to do |format|
      if @bank.save 
        format.html {redirect_to @bank}
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @bank = Bank.find(params[:id])
  end

  def update
    @bank = Bank.find(params[:id])
    if @bank.update(bank_params)
      redirect_to @bank
    else
      render :edit, status:  :unprocessable_entity
    end
  end

  def destroy
    @bank = Bank.find(params[:id])
    @bank.destroy
    redirect_to root_path, status: :see_other
  end


  private
  def bank_params
    params.require(:bank).permit(:name, :lastname, :email, :city, :pin, :age)
  end

  private
  def banks_layouts
    false ? "special" : "banks"
  end

end