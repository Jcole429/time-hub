class EmployeesController < ApplicationController
  def index
    @employees = Employee.all().order(:last_name)
  end

  def new
    @employee = Employee.new
  end
    
  def create
    @employee = Employee.new(post_params)
    puts post_params
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
    @entries = Entry.all().where(employee_id: @employee.id).joins(:project).joins(:employee).order(:date).reverse_order
  end

  private
  def post_params
    params.require(:employee).permit(:id, :first_name, :last_name)
  end
end
