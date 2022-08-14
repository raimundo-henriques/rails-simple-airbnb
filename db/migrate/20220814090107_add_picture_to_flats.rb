class AddPictureToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :picture, :string
  end
end
