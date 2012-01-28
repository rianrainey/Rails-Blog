class AddPhotosToAlbums < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      t.references :photo
    end
    
  end
end
