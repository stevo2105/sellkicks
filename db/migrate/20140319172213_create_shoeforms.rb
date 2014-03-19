class CreateShoeforms < ActiveRecord::Migration
  def change
    create_table :shoeforms do |t|
      t.string :contact_email
      t.string :phone_number
      t.float :size
      t.float :price
      t.string :img_url
      t.text :description
      t.string :condition

      t.timestamps
    end
  end
end
