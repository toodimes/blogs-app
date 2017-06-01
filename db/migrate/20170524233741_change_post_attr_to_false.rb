class ChangePostAttrToFalse < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :is_published, :boolean, :default => false
  end
end
