class DashboardController < ApplicationController
  def index
    # fetch any necessary data for the dashboard
    @user = current_user

  end
end
