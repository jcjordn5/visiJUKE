class CreateSoundcs < ActiveRecord::Migration
  def change
    create_table :soundcs do |t|
      t.string :title
      t.string :description
      t.string :waveform_url
      t.string :stream_url
      t.string :artwork_url
    end
  end
end
