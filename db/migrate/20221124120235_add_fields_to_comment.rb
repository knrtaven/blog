class AddFieldsToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :body, :string
    add_column :comments, :article_id, :integer
  end
end
