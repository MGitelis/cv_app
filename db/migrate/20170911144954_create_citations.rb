class CreateCitations < ActiveRecord::Migration[5.1]
  def change
    create_table :citations do |t|
      t.integer :year
      t.string :title
      t.string :journal
      t.integer :volume
      t.integer :issue
      t.string :pages
      t.string :doi

      t.timestamps
    end
  end
end
