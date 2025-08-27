class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.timestamps
      t.references :authorable, polymorphic: true, null: false

    end
  end
end
