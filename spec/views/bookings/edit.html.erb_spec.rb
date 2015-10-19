require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :title => "MyString",
      :description => "MyText",
      :user_id => 1,
      :room_id => 1
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_title[name=?]", "booking[title]"

      assert_select "textarea#booking_description[name=?]", "booking[description]"

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_room_id[name=?]", "booking[room_id]"
    end
  end
end
