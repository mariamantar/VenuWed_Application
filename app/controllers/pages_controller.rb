class PagesController < ApplicationController

  def home
    @company = Company.new
    @customer = Customer.new
  end
