class CreateUtterances < ActiveRecord::Migration
  def change
    create_table :utterances do |t|
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
