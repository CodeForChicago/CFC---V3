class Video < ApplicationRecord
    self.primary_key = 'url' 
    
    has_many :video2tags 
    has_many :tags, through: :video2tags
end
