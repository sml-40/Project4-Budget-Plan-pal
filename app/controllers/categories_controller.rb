class CategoriesController < ApplicationController
  # The controller transfers data from the model to the view.
  def index
    #Calling the model to get the data from the database.
    # makes the categories available to the view, so we can iterate over them, class instance variable.
    @categories = Category.all
  end

  def create
    # Create a new category using the data from the form
    category = Category.new
    category.name = params[:category][:name]
    category.save
    # Redirect to the categories index page
    redirect_to categories_path
  end

  def new
    # Create a new category object
    @category = Category.new
  end
end
