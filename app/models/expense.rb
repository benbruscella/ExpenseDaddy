class Expense < ActiveRecord::Base

  belongs_to :user

  def custom_label_method
    "#{self.amount}"
  end

end

