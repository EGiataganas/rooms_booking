class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :num_attendance
      t.string :setup
      t.string :equipment

      t.timestamps null: false
    end
  end
end
