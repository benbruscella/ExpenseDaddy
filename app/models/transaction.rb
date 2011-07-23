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

  YEAR=2011

  scope :debits, :conditions => { :transaction_type_id => 1 }
  scope :credits, :conditions => { :transaction_type_id => 2 }
  scope :desc, :order => "spent_at DESC"
  scope :by_category, lambda { |category_id| { :conditions => {:category_id => category_id}  }}
  scope :by_user, lambda { |user_id| { :conditions => {:user_id => user_id}  }}
  scope :by_month, 
    lambda { |m| {
        :conditions => ["spent_at between ? and ?", 
          Date.new(YEAR, m.to_i).beginning_of_month, Date.new(YEAR, m.to_i).end_of_month] }}

  def custom_label_method
    "#{self.amount}"
  end
  
end

