class VoterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name,:last_name,:dob,:city
end
