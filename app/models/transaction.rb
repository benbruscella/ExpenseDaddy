# == Schema Information
#
# Table name: transactions
#
#  id                  :integer(4)      not null, primary key
#  user_id             :integer(4)
#  spent_at            :datetime
#  amount              :float
#  description         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  category_id         :integer(4)      default(1)
#  transaction_type_id :integer(4)
#

class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  belongs_to :transaction_type

  scope :debits, :conditions => { :transaction_type_id => 1 }
  scope :credits, :conditions => { :transaction_type_id => 2 }
  scope :desc, :order => "spent_at DESC"
  scope :by_category, lambda { |category_id| { :conditions => {:category_id => category_id}  }}
  scope :by_user, lambda { |user_id| { :conditions => {:user_id => user_id}  }}
  scope :by_month, 
    lambda { |m| {
        :conditions => ["spent_at between ? and ?", Date.new(YEAR, m).beginning_of_month, Date.new(YEAR, m).end_of_month] }}

  def custom_label_method
    "#{self.amount}"
  end
  
  YEAR=2011

  class << self

    def total(month)
      debits.by_month(month.to_i).sum(:amount)
    end

    def month_category_total(month, category)
      debits.by_category(category.id).by_month(month.to_i).sum(:amount)
    end

    def month_user_total(month, user)
      debits.by_user(user.id).by_month(month.to_i).sum(:amount)
    end

    def month_category(month, category)
      debits.by_category(category.id).by_month(month.to_i).desc
    end

    def month_user_category_total(month, user, category)
      debits.by_user(user.id).by_category(category.id).by_month(month.to_i).sum(:amount)
    end

    def month_income_total(month)
      credits.by_month(month.to_i).sum(:amount)
    end

    def month_user_income_total(month, user)
      credits.by_user(user.id).by_month(month.to_i).sum(:amount)
    end

  end

  
end

