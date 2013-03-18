class Genre < ActiveRecord::Base
  attr_accessible :name, :podcast_ids

  has_and_belongs_to_many :podcasts
end
