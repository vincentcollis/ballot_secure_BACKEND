class RegisteredVoterSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :"lastname",:"firstname",:"housenumber",:"streetname",:"city",:"zip5",:"zip4",:"dob",:"gender",:"politicalparty",:"countycode",:"electiondistrict",:"legislativedistrict",:"ward",:"congressionaldistrict",:"senatedistrict",:"assemblydistrict"
end
