class VoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :candidate_id, :ballot_id

  attributes :name do |ele|
      ele.candidate.name
  end

  attributes :position do |ele|
    ele.candidate.position
  end

end
