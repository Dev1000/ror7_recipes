class CreateChefs < ActiveRecord::Migration[7.1]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :email
      t.string :state

      t.timestamps
    end
  end
end
