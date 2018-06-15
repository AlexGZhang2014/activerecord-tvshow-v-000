class Show < ActiveRecord::Base
  def highest_rating
    self.class.maximum("rating")
  end
  
  def most_popular_show
    self.class.find_by(highest_rating)
  end
  
  def lowest_rating
    self.class.minimum("rating")
  end
  
  def least_popular_show
    self.class.find_by(lowest_rating)
  end
  
  def ratings_sum
    self.class.sum("ratings")
  end
  
  def popular_shows
    self.class.where("rating > ?", 5)
  end
  
  def shows_by_alphabetical_order
    self.class.order("ASC")
  end
end