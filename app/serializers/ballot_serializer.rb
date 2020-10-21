class BallotSerializer
  include FastJsonapi::ObjectSerializer
  attributes :voter_id
end
