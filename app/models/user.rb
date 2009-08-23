class User < ActiveRecord::Base
  acts_as_authentic
  has_many :recommendations
  has_many :recommendations_made
end
