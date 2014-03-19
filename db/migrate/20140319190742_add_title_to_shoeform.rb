class AddTitleToShoeform < ActiveRecord::Migration
  def change
    add_column :shoeforms, :title, :string
  end
end
