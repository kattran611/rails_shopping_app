class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :product_name
      t.string :description
      t.integer :code
      t.string :price
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
