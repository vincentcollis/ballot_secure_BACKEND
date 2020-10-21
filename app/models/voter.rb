class Voter < ApplicationRecord
    has_many :ballots
    has_many :votes, through: :ballots 
end
