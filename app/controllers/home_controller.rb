class HomeController < ApplicationController

  def index
    @transactions = Transaction.by_month(DateTime.now.month)
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end