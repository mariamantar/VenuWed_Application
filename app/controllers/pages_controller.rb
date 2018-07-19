class PagesController < ApplicationController
  # before_action :authenticate_user!
  def home
    @company = Company.new
    @customer = Customer.new
  end

  def welcome
  end

end
