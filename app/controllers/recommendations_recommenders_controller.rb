class RecommendationsRecommendersController < ApplicationController
  def index
    @recommendations_recommenders = RecommendationsRecommenders.all
  end
  
  def show
    @recommendations_recommenders = RecommendationsRecommenders.find(params[:id])
  end
  
  def new
    @recommendations_recommenders = RecommendationsRecommenders.new
  end
  
  def create
    @recommendations_recommenders = RecommendationsRecommenders.new(params[:recommendations_recommenders])
    if @recommendations_recommenders.save
      flash[:notice] = "Successfully created recommendations recommenders."
      redirect_to @recommendations_recommenders
    else
      render :action => 'new'
    end
  end
  
  def edit
    @recommendations_recommenders = RecommendationsRecommenders.find(params[:id])
  end
  
  def update
    @recommendations_recommenders = RecommendationsRecommenders.find(params[:id])
    if @recommendations_recommenders.update_attributes(params[:recommendations_recommenders])
      flash[:notice] = "Successfully updated recommendations recommenders."
      redirect_to @recommendations_recommenders
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @recommendations_recommenders = RecommendationsRecommenders.find(params[:id])
    @recommendations_recommenders.destroy
    flash[:notice] = "Successfully destroyed recommendations recommenders."
    redirect_to recommendations_recommenders_url
  end
end
