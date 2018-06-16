class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :art_url

      t.timestamps
    end
  end
end
