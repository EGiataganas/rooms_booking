require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :title => "Title",
        :description => "MyText",
        :user_id => 1,
        :room_id => 2
      ),
      Booking.create!(
        :title => "Title",
        :description => "MyText",
        :user_id => 1,
        :room_id => 2
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
