require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :name => "MyString",
      :num_attendance => 1,
      :setup => "MyString",
      :equipment => "MyString"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "input#room_num_attendance[name=?]", "room[num_attendance]"

      assert_select "input#room_setup[name=?]", "room[setup]"

      assert_select "input#room_equipment[name=?]", "room[equipment]"
    end
  end
end
