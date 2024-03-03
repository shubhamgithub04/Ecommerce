class CreateMovieShows < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_shows do |t|
      t.references :movie, null: false, foreign_key: true
      t.date :show_date
      t.json :show_slot

      t.timestamps
    end
  end
end
