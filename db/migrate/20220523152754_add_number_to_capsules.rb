class AddNumberToCapsules < ActiveRecord::Migration[7.0]
  def change
    add_column :capsules, :number, :integer
  end
end
