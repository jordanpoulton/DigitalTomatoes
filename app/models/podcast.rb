class Podcast < ActiveRecord::Base
  attr_accessible :body, :image, :name, :rating, :url
end
