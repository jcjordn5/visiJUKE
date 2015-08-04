class CreateSoundcs < ActiveRecord::Migration
  def change
    create_table :soundcs do |t|
      t.string :stream_url
      t.string :genre
      t.string :title
      t.string :artwork_url
      t.string :waveform_url

      t.timestamps null: false
    end
  end
end
