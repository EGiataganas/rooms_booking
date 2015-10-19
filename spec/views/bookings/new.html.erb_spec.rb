require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :title => "MyString",
      :description => "MyText",
      :user_id => 1,
      :room_id => 1
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_title[name=?]", "booking[title]"

      assert_select "textarea#booking_description[name=?]", "booking[description]"

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_room_id[name=?]", "booking[room_id]"
    end
  end
end
