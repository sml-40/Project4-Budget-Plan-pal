class TransactionsController < ApplicationController
  def index
    # Get all transactions for the current user
    @transactions = current_user.transactions.order(transaction_date: :desc)
end
