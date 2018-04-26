class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :community
      t.string :price
      t.string :location
      t.string :url

      t.timestamps null: false
    end
  end
end
