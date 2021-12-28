require 'rails_helper'

RSpec.describe "inboxes/index", type: :view do
  before(:each) do
    assign(:inboxes, [
      Inbox.create!(
        name: "Name"
      ),
      Inbox.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of inboxes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
