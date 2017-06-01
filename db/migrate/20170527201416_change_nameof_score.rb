class ChangeNameofScore < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :score, :amount
  end
end
