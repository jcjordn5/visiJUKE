class AddWaveformUrlToSoundc < ActiveRecord::Migration
  def change
    add_column :soundcs, :waveform_url, :string
  end
end
