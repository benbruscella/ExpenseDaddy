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
    
  end

  
end

