class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
 

  def show
    @student = Student.find(params[:id])
  end

       
   def new
    @student = Student.new
  end


  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path 
    else
      render :new, notice: 'student was not created.'
    end
  end


  def edit
    @student = Student.find(params[:id])
  end


  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to root_path
    else
      render :new, notice: 'student was not updated.'
    end
  end


  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      redirect_to root_path
    else    
    end
  end
  

    private 
    def student_params 
    params.require(:student).permit(:name, :age, :status)
    end
end
