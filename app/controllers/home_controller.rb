class HomeController < ApplicationController

  def index
    @transactions = Transaction.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end