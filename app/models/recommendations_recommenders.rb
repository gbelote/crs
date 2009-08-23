class RecommendationsRecommenders < ActiveRecord::Base
  attr_accessible :recommendation_id, :recommender_id

  belongs_to :recommendation

  validates_presence_of :recommendation_id, :recommender_id
end
