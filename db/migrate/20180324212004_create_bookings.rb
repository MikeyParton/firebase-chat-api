class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.references :user
      t.references :business
      t.timestamps
    end
  end
end
