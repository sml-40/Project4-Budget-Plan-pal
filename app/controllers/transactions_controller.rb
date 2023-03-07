class TransactionsController < ApplicationController
  def index
    # Get all transactions for the current user
    @transactions = current_user.transactions.order(transaction_date: :desc)
    @transaction = Transaction.new

  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      flash[:success] = "Transaction created successfully!"
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:title, :amount, :transaction_date, :category)
  end
end