# == Schema Information
#
# Table name: transaction_types
#
#  id         :integer(4)      not null, primary key
#  typename   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TransactionType < ActiveRecord::Base

  has_many :transactions

  def custom_label_method
    "#{self.typename}"
  end
  
end

