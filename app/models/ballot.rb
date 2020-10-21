class Ballot < ApplicationRecord
    belongs_to :voter
    
    has_many :votes
    has_many :candidates, through: :votes
end
