class AddAuthorIdToCitation < ActiveRecord::Migration[5.1]
  def change
    add_column :citations, :author_id, :integer
  end
end
