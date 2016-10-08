class Video < ApplicationRecord
    
    self.primary_key = 'url'
    
    has_many :video2tags #Relates users to project accounts
    has_many :tags, through: :video2tags

end
