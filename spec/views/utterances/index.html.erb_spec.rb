require 'rails_helper'

RSpec.describe "utterances/index", :type => :view do
  before(:each) do
    assign(:utterances, [
      Utterance.create!(
        :user => nil,
        :project => nil
      ),
      Utterance.create!(
        :user => nil,
        :project => nil
      )
    ])
  end

  it "renders a list of utterances" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
