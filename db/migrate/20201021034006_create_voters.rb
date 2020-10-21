class CreateVoters < ActiveRecord::Migration[6.0]
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :city
      
      t.timestamps
    end
  end
end
