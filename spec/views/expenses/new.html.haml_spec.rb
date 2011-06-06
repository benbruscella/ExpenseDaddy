require 'spec_helper'

describe "expenses/new.html.haml" do
  before(:each) do
    assign(:expense, stub_model(Expense,
      :user_id => 1,
      :amount => 1.5,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expenses_path, :method => "post" do
      assert_select "input#expense_user_id", :name => "expense[user_id]"
      assert_select "input#expense_amount", :name => "expense[amount]"
      assert_select "input#expense_description", :name => "expense[description]"
    end
  end
end
