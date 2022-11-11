# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        inverse_of: :artist,
        class_name: :Artwork,
        dependent: :destroy

    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        inverse_of: :viewer,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_artworks,
        through: :shares,
        source: :artwork

    has_many :comments,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Comment,
        dependent: :destroy

end
