class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :score, default: 1

      t.timestamps
    end
  end
end
