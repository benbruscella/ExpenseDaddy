class HomeController < ApplicationController
  # GET /expenses
  # GET /expenses.xml
  def index
    @expenses = Expense.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end