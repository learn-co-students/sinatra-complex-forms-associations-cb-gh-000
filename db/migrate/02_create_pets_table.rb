class CreatePetsTable < ActiveRecord::Migration[4.2]
  def change
    create_table :pets do |t|
      t.string :name
    end
  end
end