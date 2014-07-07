require 'rails_helper'

RSpec.describe "utterances/new", :type => :view do
  before(:each) do
    assign(:utterance, Utterance.new(
      :user => nil,
      :project => nil
    ))
  end

  it "renders new utterance form" do
    render

    assert_select "form[action=?][method=?]", utterances_path, "post" do

      assert_select "input#utterance_user_id[name=?]", "utterance[user_id]"

      assert_select "input#utterance_project_id[name=?]", "utterance[project_id]"
    end
  end
end
