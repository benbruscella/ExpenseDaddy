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

  def custom_label_method
    "#{self.amount}"
  end

  class << self

    def by_month(month)
      find(:all, :conditions => ["spent_at between ? and ?",
         Date.today.beginning_of_month, Date.today.end_of_month], :order => 'spent_at DESC')
    end

    def total(month)
      sum(:amount, :conditions => ["spent_at between ? and ?",
         Date.today.beginning_of_month, Date.today.end_of_month])
    end

    def month_category_total(month, category)
      sum(:amount, :conditions => ["spent_at between ? and ? and category_id = ?",
         Date.today.beginning_of_month, Date.today.end_of_month, category.id])
    end

    def month_user_total(month, user)
      sum(:amount, :conditions => ["spent_at between ? and ? and user_id = ?",
         Date.today.beginning_of_month, Date.today.end_of_month, user.id])
    end

    def month_category(month, category)
      find(:all, :conditions => ["spent_at between ? and ? and category_id = ?",
         Date.today.beginning_of_month, Date.today.end_of_month, category.id], :order => 'spent_at DESC')
    end

    def month_user_category_total(month, user, category)
      sum(:amount, :conditions => ["spent_at between ? and ? and category_id = ? and user_id = ?",
         Date.today.beginning_of_month, Date.today.end_of_month, category.id, user.id])
    end

  end

  
end

