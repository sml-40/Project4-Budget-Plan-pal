class ExpensesController < ApplicationController
  def index
    # makes the expenses available to the view, so we can iterate over them, class instance variable.
    @expenses = Expense.all
  end
end
