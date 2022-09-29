class PagesController < ApplicationController
  def home
  end

  def login
    redirect_to groups_path if logged_in?
  end
end
