class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.references :citation, foreign_key: true

      t.timestamps
    end
    add_index :authors, :citation_id
  end
end
