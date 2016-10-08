class Tag < ApplicationRecord

    self.primary_key = "tag"
    
    has_many :video2tags #Relates videos to tags
    has_many :videos, through: :video2tags
    
end
