# == Schema Information
#
# Table name: videos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text             not null
#  uploader_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ApplicationRecord

    has_many :comments,
        primary_key: :id,
        foreign_key: :video_id,
        class_name: :Comment 
  
    belongs_to :user, 
        primary_key: :id, 
        foreign_key: :video_id,
        class_name: :Like

    belongs_to :uploader, 
        primary_key: :id, 
        foreign_key: :uploader_id,
        class_name: :User
#NEED HELP WITH THIS ONE
    # has_many :likers,
    #     through: :likes,
    #     source: :liker 

    has_many :likes,
        through: :user,
        source: :liker 
end
