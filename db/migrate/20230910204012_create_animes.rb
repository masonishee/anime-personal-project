class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.integer :year
      t.string :genre
      t.string :country

      t.timestamps
    end
  end
end
