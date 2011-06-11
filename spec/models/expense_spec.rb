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

require 'spec_helper'

describe Expense do
  pending "add some examples to (or delete) #{__FILE__}"
end
