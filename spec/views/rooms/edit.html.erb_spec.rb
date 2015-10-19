require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :name => "MyString",
      :num_attendance => 1,
      :setup => "MyString",
      :equipment => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "input#room_num_attendance[name=?]", "room[num_attendance]"

      assert_select "input#room_setup[name=?]", "room[setup]"

      assert_select "input#room_equipment[name=?]", "room[equipment]"
    end
  end
end
