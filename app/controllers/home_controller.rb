class HomeController < ApplicationController
  def index
  	@cards = Card.all.order('likes desc')
  end

  def new
  	@cards = Card.all.order('created_at desc')
  	render 'index'
  end

  def like
  	@card = Card.find(params[:id])
  	likes = @card.likes.nil? ? 1 : @card.likes + 1
  	respond_to do |format|
      if @card.update(likes: likes)
        format.html { redirect_to home_index_path }
        format.js {}
        format.json { head :no_content }
      else
        format.html { render action: 'index' }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end
end
