class HomeController < ApplicationController

  def index
    @month = DateTime.now.month
    @month = params[:month] unless params[:month].nil?
    @month = @month.to_i
    @transactions = Transaction.by_month(@month)
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end