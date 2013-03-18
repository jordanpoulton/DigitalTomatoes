class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :name
      t.text :body
      t.string :image
      t.string :url
      t.integer :rating

      t.timestamps
    end
  end
end
