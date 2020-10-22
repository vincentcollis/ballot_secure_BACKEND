# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'csv'

CSV.foreach(Rails.root.join('/Users/vince/Desktop/ballot_secure/data.csv'), headers: true) do |row|    
# CSV.foreach(Rails.root.join('../voterfile_backend/lib/NY_Voter_data.csv'), headers: true) do |row|

  RegisteredVoter.create({
    lastname: row[1],
    firstname: row[2],
    housenumber: row[3],
    streetname: row[4],
    city: row[5],
    zip5: row[6],
    zip4: row[7],
    dob: row[8],
    gender: row[9],
    politicalparty: row[10],
    countycode: row[11],
    electiondistrict: row[12],
    legislativedistrict: row[13],
    ward: row[14],
    congressionaldistrict: row[15],
    senatedistrict: row[16],
    assemblydistrict: row[17],
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