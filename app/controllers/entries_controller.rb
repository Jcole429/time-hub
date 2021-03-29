class EntriesController < ApplicationController
  def index
    @entries = Entry.all().order(:date).reverse_order.joins(:project).joins(:employee)
  end

  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(post_params)
    puts post_params
    if @entry.save
      redirect_to @entry
    else
      render :new
    end
  end

  def show
    @entry = Entry.joins(:project).joins(:employee).find(params[:id])
  end

  private
  def post_params
    params.require(:entry).permit(:id, :project_id, :employee_id, :date, :hours, :billable, :billable_rate)
  end
end
