class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :source
      t.decimal :score
      t.text :description
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
