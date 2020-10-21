class CandidateSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,:position
end
