class Video2tag < ApplicationRecord
  
  belongs_to :video
  belongs_to :tag
  
  validates :video_id, presence: true
  validates :tag_id, presence: true
end
