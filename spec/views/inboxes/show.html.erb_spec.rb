require 'rails_helper'

RSpec.describe "inboxes/show", type: :view do
  before(:each) do
    @inbox = assign(:inbox, Inbox.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
