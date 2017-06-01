class DeleteScoreToTrySomethingElse < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :score, :integer
  end
end
