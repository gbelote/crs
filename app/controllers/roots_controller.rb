class RootsController < ApplicationController
  def index
    if current_user
      redirect_to recommendations_path
    end
  end
end
