class TransactionsController < ApplicationController

  def create
    @transactions = Transaction.all
  end
end
