class CreateSocialMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :social_media do |t|
      t.integer :venture_id
      t.string :linkedin_handle
      t.string :facebook_handle
      t.string :twitter_handle
      t.string :instagram_handle
      t.string :youtube_handle

      t.timestamps
    end
  end
end
