class Recommendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  has_and_belongs_to_many :recommenders, :join_table => :recommendations_recommenders, :association_foreign_key => :recommender_id, :class_name => "User"

  validates_presence_of :user_id, :link_id
  validates_associated :user
  validates_associated :link
  validates_length_of :recommenders, :minimum => 1
  validates_each :recommenders do |model, attr, value|
    model.errors.add( attr, 'cannot be the recommendee' ) if value = model.user
  end
end
