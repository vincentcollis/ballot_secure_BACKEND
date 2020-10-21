class Vote < ApplicationRecord
    belongs_to :ballot
    belongs_to :candidate
end
