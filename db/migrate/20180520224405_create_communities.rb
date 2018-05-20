class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :community
      t.string :price
      t.string :location
      t.string :url
      t.string :img
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
