require 'rails_helper'

RSpec.describe "utterances/edit", :type => :view do
  before(:each) do
    @utterance = assign(:utterance, Utterance.create!(
      :user => nil,
      :project => nil
    ))
  end

  it "renders the edit utterance form" do
    render

    assert_select "form[action=?][method=?]", utterance_path(@utterance), "post" do

      assert_select "input#utterance_user_id[name=?]", "utterance[user_id]"

      assert_select "input#utterance_project_id[name=?]", "utterance[project_id]"
    end
  end
end
