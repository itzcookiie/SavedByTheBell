class CreateUserSounds < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sounds do |t|
      t.integer :user_id
      t.integer :sound_id

      t.timestamps
    end
  end
end
