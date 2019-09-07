class CreateAudioSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :audio_samples do |t|
      t.references :studio, foreign_key: true
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
