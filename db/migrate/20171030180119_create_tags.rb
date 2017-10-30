class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.text :h1
      t.text :h2
      t.text :h3
      t.text :links
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
