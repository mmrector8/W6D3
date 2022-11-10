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
    validates :artist_id, presence: true, uniqueness: true
    validates :title, uniqueness: { scope: :artist_id }
    
    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

end
