# == Schema Information
#
# Table name: expenses
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  when        :datetime
#  amount      :float
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer         default(1)
#

class Expense < ActiveRecord::Base

  belongs_to :user
  belongs_to :category

  def custom_label_method
    "#{self.amount}"
  end

  class << self

    def total
      total = 0
      all.each do |expense|
        total += expense.amount
      end
      total
    end


    def month_category_total(month, category)
      total = 0
      all(:conditions => {:category_id => category.id}).each do |expense|
        total += expense.amount
      end
      total
    end

    def month_category(month, category)
      find(:all, :conditions => {:category_id => category.id}, :order => 'category_id DESC')
    end
    
  end

  
end

