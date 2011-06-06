require 'spec_helper'

describe "expenses/show.html.haml" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :user_id => 1,
      :amount => 1.5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
