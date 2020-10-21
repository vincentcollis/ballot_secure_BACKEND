class CreateBallots < ActiveRecord::Migration[6.0]
  def change
    create_table :ballots do |t|
      t.integer :voter_id

      t.timestamps
    end
  end
end
