class AddPostId < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :post_id, :integer
  end
end
