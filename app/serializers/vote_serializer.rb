class VoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :candidate_id, :ballot_id


  attributes :name do |object|
      object.candidate.name
  end

end
