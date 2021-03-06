require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :title => "Title",
      :description => "MyText",
      :user_id => 1,
      :room_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
