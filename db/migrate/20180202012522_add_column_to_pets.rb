class AddColumnToPets < ActiveRecord::Migration[4.2]
  def change
    add_column :pets, :owner_id, :integer
  end
end
