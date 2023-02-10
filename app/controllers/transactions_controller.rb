class TransactionsController < ApplicationController

  def create
    @bank = Bank.find(params[:bank_id])
    @transaction = @bank.transactions.create(transaction_params)
    redirect_to bank_path(@bank)
  end
end
