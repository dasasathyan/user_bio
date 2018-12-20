class UserBiosController < ApplicationController
    before_action :authenticate_user!
  def index
		@bios = UserBio.all
	end
	
	def new
    @bio = UserBio.new
	end
	
  def create
    #binding.pry
  	@bio = UserBio.new(bio_params) 
  	if @bio.save 
    	redirect_to '/user_bios' 
  	else 
    	render 'new' 
  	end 
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private 
  def bio_params
    params.require(:user_bio).permit(:bio, :goal) 
  end
end