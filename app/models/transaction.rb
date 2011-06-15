# == Schema Information
#
# Table name: transactions
#
#  id          :integer(4)      not null, primary key
#  user_id     :integer(4)
#  spent_at    :datetime
#  amount      :float
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer(4)      default(1)
#

class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :category

  def custom_label_method
    "#{self.amount}"
  end

  class << self

    def total
      total = 0
      all.each do |transaction|
        total += transaction.amount
      end
      total
    end


    def month_category_total(month, category)
      total = 0
      all(:conditions => {:category_id => category.id}).each do |transaction|
        total += transaction.amount
      end
      total
    end

    def month_user_total(month, user)
      total = 0
      all(:conditions => {:user_id => user.id}).each do |transaction|
        total += transaction.amount
      end
      total
    end

    def month_category(month, category)
      find(:all, :conditions => {:category_id => category.id}, :order => 'spent_at DESC')
    end

    
  end

  
end

