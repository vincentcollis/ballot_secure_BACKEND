class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :candidate_id
      t.integer :ballot_id
      
      t.timestamps
    end
  end
end
