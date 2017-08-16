class TrangchinhsController < ApplicationController
  before_action :link_read, only: [:show]
  before_action :tops1, only: [:index]
  before_action :tops6, only: [:index]
  before_action :newestTechnolygy, only:[:index]
  before_action :newestSport, only:[:index]
  def index
  end
  def show
    @link.updateCount(params[:id])
  end
  private
  def link_read
    @link = New.find(params[:id])
  end
  def tops1
    @read1 = New.order(:counts).last
  end
  def tops6
    @read2 = New.order(:counts).last(6)
  end
  def newestTechnolygy
    @read3 = New.where(type_id: '2').order(:create_day).last(3)
  end
  def newestSport
    @read4 = New.where(type_id: '4').order(:create_day).last(3)
  end
end
