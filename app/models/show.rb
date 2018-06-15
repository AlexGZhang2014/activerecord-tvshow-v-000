class Show < ActiveRecord::Base
  def Show::highest_rating
    self.class.maximum("rating")
  end
  
  def Show::most_popular_show
    self.class.find_by(highest_rating)
  end
  
  def Show::lowest_rating
    self.class.minimum("rating")
  end
  
  def Show::least_popular_show
    self.class.find_by(lowest_rating)
  end
  
  def Show::ratings_sum
    self.class.sum("ratings")
  end
  
  def Show::popular_shows
    self.class.where("rating > ?", 5)
  end
  
  def Show::shows_by_alphabetical_order
    self.class.order("ASC")
  end
end