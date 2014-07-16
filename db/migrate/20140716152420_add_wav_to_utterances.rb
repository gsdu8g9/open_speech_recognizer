class AddWavToUtterances < ActiveRecord::Migration
  def change
    add_column :utterances, :wav, :string
  end
end
