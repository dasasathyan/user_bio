class UserBiosController < ApplicationController
    #load_and_authorize_resource
    before_action :authenticate_user!
  def index
    if current_user.id == 1
      @bios=UserBio.all
    else
    @bios = UserBio.where(:user_id => current_user.id)
    #authorize! :index, @bio
    end
	end
	
	def new
    @bio = UserBio.new
	end
	
  def create
    @bio = UserBio.new(bio_params) 
    @bio.name = current_user.name
    @bio.emailid=current_user.email
    @bio.user_id=current_user.id
    if @bio.save 
      #binding.pry
      UserBioMailer.welcome_email(@bio).deliver_now
    	redirect_to :user_bios 
    else 
      flash[:error]= @bio.errors
    	render 'new' 
  	end 
  end

  def show
    @bio=UserBio.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    binding.pry
    @bio = UserBio.find(params[:id])
    @bio.destroy
    redirect_to user_bios
  end

  private 
  def bio_params
    params.require(:user_bio).permit(:bio, :goal) 
  end

end