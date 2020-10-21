# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'csv'
CSV.foreach(Rails.root.join('/Users/vince/Development/Flatiron/Ballot_Secure/ballot_secure_BACKEND/db/data_source/test_data.csv'), headers: true) do |row|
# CSV.foreach(Rails.root.join('../voterfile_backend/lib/NY_Voter_data.csv'), headers: true) do |row|

  RegisteredVoter.create({
    lastname: row[0],
    firstname: row[1],
    housenumber: row[2],
    streetname: row[3],
    city: row[4],
    zip5: row[5],
    zip4: row[6],
    dob: row[7],
    gender: row[8],
    politicalparty: row[9],
    countycode: row[10],
    electiondistrict: row[11],
    legislativedistrict: row[12],
    ward: row[13],
    congressionaldistrict: row[14],
    senatedistrict: row[15],
    assemblydistrict: row[16],
  })
end

150.times do
    Voter.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        dob: "09021999",
        city: "New York" 
    )    
end

Candidate.create(name: "Joe Biden", position: "President")
Candidate.create(name: "Donald Trump", position: "President")
Candidate.create(name: "Kirsten Gillibrand", position:"Senate")
Candidate.create(name: "Chele Farley", position:"Senate")
Candidate.create(name: "Alexandria Ocasio-Cortez", position:"Congress")
Candidate.create(name: "John Cummings", position:"Congress")

450.times do
    Ballot.create(
        voter_id: Voter.all.sample.id
    )
end

450.times do
    Vote.create(
        candidate_id: Candidate.all.sample.id,
        ballot_id: Ballot.all.sample.id
    )
end