require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :name => "Name",
        :num_attendance => 1,
        :setup => "Setup",
        :equipment => "Equipment"
      ),
      Room.create!(
        :name => "Name",
        :num_attendance => 1,
        :setup => "Setup",
        :equipment => "Equipment"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Setup".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment".to_s, :count => 2
  end
end
