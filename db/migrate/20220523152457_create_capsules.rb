class CreateCapsules < ActiveRecord::Migration[7.0]
  def change
    create_table :capsules do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
