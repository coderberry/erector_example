class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :genre
end
