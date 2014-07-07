require 'rails_helper'

RSpec.describe "utterances/show", :type => :view do
  before(:each) do
    @utterance = assign(:utterance, Utterance.create!(
      :user => nil,
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
