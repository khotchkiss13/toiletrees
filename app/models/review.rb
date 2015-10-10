class Review < ActiveRecord::Base
  belongs_to :bathroom
  belongs_to :user

  after_save do
  	self.bathroom.calc_average
  end

end
