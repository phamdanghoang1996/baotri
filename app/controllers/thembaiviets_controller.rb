class ThembaivietsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def create
    news = New.new
    create_day = Time.now
    news.addvalue(params[:title], params[:introduce], params[:content],'1213',create_day,'0000-00-00 00:00:00')
  end
#  private
#  def create_params
#    image = 'Pham Dang Hoang'
#    create_day = '2001-02-03 00:00:00'
#    update_day = '2001-02-03 00:00:00'
#    counts = 0
#    params.require(:new).permit(:title,:introduce,:content,image,create_day,update_day,counts)
#  end
end
