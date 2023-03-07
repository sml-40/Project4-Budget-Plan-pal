class DashboardController < ApplicationController
  def index
    # Get the current user
    @user = current_user
    # Get the 5 most recent transactions for the current user
    @transactions = current_user.transactions.order(transaction_date: :desc).limit(5)
  end
end
