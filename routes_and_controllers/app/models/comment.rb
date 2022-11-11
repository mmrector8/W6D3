# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  author_id  :bigint           not null
#  artwork_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    validates :body, presence: true
    validates :author_id, presence: true
    validates :artwork_id, presence: true

    belongs_to :author,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User
    
    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork
        
  def self.comments_for_artwork_id(artwork_id)
        artwork = Artwork.find(artwork_id)
        artwork.comments
    end

    def self.comments_for_user_id(user_id)
        user = User.find(user_id)
        user.comments
    end

end
