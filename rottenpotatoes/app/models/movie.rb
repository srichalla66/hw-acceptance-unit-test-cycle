class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.same_director director
    if director.present?
      Movie.where(director: director)
    end
  end
end
