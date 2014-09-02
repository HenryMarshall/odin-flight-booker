class Airport < ActiveRecord::Base
  validates :airport_code, presence: true
end
