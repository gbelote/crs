class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
  end
  
  def show
    @recommendation = Recommendation.find(params[:id])
  end
  
  def new
    @recommendation = Recommendation.new
  end
  
  def create
    @recommendation = Recommendation.new(params[:recommendation])
    if @recommendation.save
      flash[:notice] = "Successfully created recommendation."
      redirect_to @recommendation
    else
      render :action => 'new'
    end
  end
  
  def edit
    @recommendation = Recommendation.find(params[:id])
  end
  
  def update
    @recommendation = Recommendation.find(params[:id])
    if @recommendation.update_attributes(params[:recommendation])
      flash[:notice] = "Successfully updated recommendation."
      redirect_to @recommendation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    flash[:notice] = "Successfully destroyed recommendation."
    redirect_to recommendations_url
  end
end
