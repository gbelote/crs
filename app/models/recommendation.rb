class Recommendation < ActiveRecord::Base
  attr_accessible :user_id, :link_id
  belongs_to :user
  belongs_to :link
  has_and_belongs_to_many :recommenders, :join_table => :recommendations_recommenders, :association_foreign_key => :recommender_id, :class_name => "User"
end
