class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :from
      t.integer :to
      t.decimal :price
      t.string :mobility_type
      t.timestamps
    end
  end
end
