class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :price
      t.integer :bedrooms
      t.text :details
      t.string :agentName
      t.string :agencyName
      t.string :phone
      t.string :email
      t.string :geo_location
      t.integer :bathrooms
      t.string :region

      t.timestamps
    end
  end
end
