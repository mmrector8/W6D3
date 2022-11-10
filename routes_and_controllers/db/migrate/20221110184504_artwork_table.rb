class ArtworkTable < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.text :image_url, null: false, index: true, unique: true
      t.references :artist, null: false, foreign_key: {to_table: :users}
      t.index [:title, :artist_id], unique: true

      
      
      
      t.timestamps
    end
  end
end
