class CategoriesController < ApplicationController
  # The controller transfers data from the model to the view.
  def index
    #Calling the model to get the data from the database.
    # makes the categories available to the view, so we can iterate over them, class instance variable.
    @categories = Category.all
  end
end
