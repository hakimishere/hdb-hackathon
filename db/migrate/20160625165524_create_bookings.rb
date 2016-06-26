class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :dish_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
