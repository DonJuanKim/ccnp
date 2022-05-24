class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :period_start
      t.datetime :period_end
      t.references :user, null: false, foreign_key: true
      t.references :capsule, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
