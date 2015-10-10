class Bathroom < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  def calc_average
  	self.average_rating = self.reviews.average(:rating)
  end
end
