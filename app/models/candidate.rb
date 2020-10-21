class Candidate < ApplicationRecord
    has_many :votes
    has_many :ballots, through: :votes
end
