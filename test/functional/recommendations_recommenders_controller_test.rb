require 'test_helper'

class RecommendationsRecommendersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => RecommendationsRecommenders.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    RecommendationsRecommenders.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    RecommendationsRecommenders.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to recommendations_recommenders_url(assigns(:recommendations_recommenders))
  end
  
  def test_edit
    get :edit, :id => RecommendationsRecommenders.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    RecommendationsRecommenders.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RecommendationsRecommenders.first
    assert_template 'edit'
  end
  
  def test_update_valid
    RecommendationsRecommenders.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RecommendationsRecommenders.first
    assert_redirected_to recommendations_recommenders_url(assigns(:recommendations_recommenders))
  end
  
  def test_destroy
    recommendations_recommenders = RecommendationsRecommenders.first
    delete :destroy, :id => recommendations_recommenders
    assert_redirected_to recommendations_recommenders_url
    assert !RecommendationsRecommenders.exists?(recommendations_recommenders.id)
  end
end
