class TransactionsController < ApplicationController
  # The set_transaction method is added as a before_action callback to set the @transaction instance variable for these actions.
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    # Get all transactions for the current user
    @transactions = current_user.transactions.order(transaction_date: :desc)
    @transaction = Transaction.new
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end

  def edit
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      flash[:success] = "Transaction created successfully!"
      redirect_to dashboard_path
    else
      # If the transaction fails to save, render the new template again.
      render 'new'
    end
  end

  def update
    if @transaction.update(transaction_params)
      flash[:turbo_success] = "Transaction updated successfully!"
      redirect_to dashboard_path
    else
      # If the transaction fails to update, render the edit template again.
      render 'edit'
    end
  end

  def destroy
    @transaction.destroy
    flash[:turbo_success] = "Transaction deleted successfully!"
    redirect_to dashboard_path
  end

  private

  def set_transaction
    @transaction = current_user.transactions.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:title, :amount, :transaction_date, :category)
  end
end