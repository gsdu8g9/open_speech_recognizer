class AddWavColumnsToUtterances < ActiveRecord::Migration
  def self.up
    add_attachment :utterances, :wav
  end

  def self.down
    remove_attachment :utterances, :wav
  end
end