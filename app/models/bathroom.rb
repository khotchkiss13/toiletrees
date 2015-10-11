class Bathroom < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  def calc_average
  	self.average_rating = self.reviews.average(:rating)
  end

  def verify
    self.number_verified++
    self.update_verified
  end

  def flag
    self.number_verified--
    self.update_verified
  end

  def update_verified
    if not self.verified
      if self.number_verified > 5
        self.verified = true
      end
    elsif self.number_verified < -5
      self.destroy
    end
  end

  def is_verified?
    self.verified
  end
end
