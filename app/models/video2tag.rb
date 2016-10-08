class Video2tag < ApplicationRecord
    belongs_to :video
    belongs_to :tag
    
    validates :video, presence: true
    validates :tag, presence: true
end
