class CreateSounds < ActiveRecord::Migration[5.2]
  def change
    create_table :sounds do |t|
      t.string :title
      t.string :description
      t.string :audio_url
      t.string :image

      t.timestamps
    end
  end
end
