# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :text             not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id }
    
    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    def self.artworks_for_user_id(user_id)
        #return array of hashes with all artworks associated with user_id
        #artworks that belong to artist
        #artworks that are shared with artist/user
        user = User.find(user_id)
        user.artworks + user.shared_artworks
    end
end
