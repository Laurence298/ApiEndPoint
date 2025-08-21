class CreateChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :chapters do |t|
      t.timestamps
      t.references :books, null: false, foreign_key: true

      t.string :chapter_name
      t.text :content
    end
  end
end
