require 'test_helper'

class RecommendationsRecommendersTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RecommendationsRecommenders.new.valid?
  end
end
