class Podcast < ActiveRecord::Base
  attr_accessible :body, :image, :name, :rating, :url, :genre_ids

  has_and_belongs_to_many :genres

  has_many :reviews
end
