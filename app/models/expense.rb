class Expense < ActiveRecord::Base

  belongs_to :user
  belongs_to :category

  def custom_label_method
    "#{self.amount}"
  end

end

