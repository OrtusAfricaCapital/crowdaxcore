class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :venture_id
      t.string :name
      t.string :role
      t.string :gender
      t.text :bio

      t.timestamps
    end
  end
end
