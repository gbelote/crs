class CreateRecommendationsRecommenders < ActiveRecord::Migration
  def self.up
    create_table :recommendations_recommenders do |t|
      t.integer :recommendation_id
      t.integer :recommender_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :recommendations_recommenders
  end
end
