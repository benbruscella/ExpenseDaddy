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

require 'spec_helper'

describe Transaction do
  pending "add some examples to (or delete) #{__FILE__}"
end
