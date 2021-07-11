class CreateVentureDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :venture_details do |t|
      t.integer :venture_id
      t.text :full_description
      t.text :need
      t.text :solution
      t.string :milestones, array: true, default: []
      t.string :how_it_works, array: true, default: []
      t.string :video_pitches, array: true, default: []
      t.string :featured_images, array: true, default: []
      t.date :founded_date

      t.timestamps
    end
  end
end
