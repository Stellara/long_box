class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title, null: false
      t.string :issue_number, null: false
      t.string :year
      t.integer :printing
      t.string :publisher, null: false
      t.string :author, null: false
      t.string :artist, null: false
      t.decimal :cover_price, null: false
      t.string :cover_variant
      t.text :description

      t.timestamps null: false
    end
  end
end
