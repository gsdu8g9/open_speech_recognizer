class AddTranscriptionToUtterance < ActiveRecord::Migration
  def change
    add_column :utterances, :transcription, :text
  end
end
