class GenresPodcastsTable < ActiveRecord::Migration
  def change
    create_table :genres_podcasts, :id=>false do |t|
      t.references :genre
      t.references :podcast
    end
  end
end
