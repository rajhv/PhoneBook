class MembersController < ApplicationController
  def index
    @members = Member.all
    #render json: Event.all
  end

 def show
   @member = Member.find(params[:id])
 end

  def new
  end

  def create
   @member = Member.new(member_params)
   @member.save
   redirect_to @member
#    render plain: params[:member].inspect
  end

  private
    def member_params
      params.require(:member).permit(:name)
    end

end
