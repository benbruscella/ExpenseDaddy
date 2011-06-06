require 'spec_helper'

describe "expenses/edit.html.haml" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :user_id => 1,
      :amount => 1.5,
      :description => "MyString"
    ))
  end

  it "renders the edit expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expenses_path(@expense), :method => "post" do
      assert_select "input#expense_user_id", :name => "expense[user_id]"
      assert_select "input#expense_amount", :name => "expense[amount]"
      assert_select "input#expense_description", :name => "expense[description]"
    end
  end
end
