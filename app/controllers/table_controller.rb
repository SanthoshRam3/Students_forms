class TableController < ApplicationController
  before_action :set_table, only: [:show, :edit, :update, :destroy]

  def show
    
  end
  def index
    @tables = Table.all
    
  end
  def new
    @table = Table.new
  end
  def edit
    
  end
  def create
    @table = Table.new(table_params)

    if @table.save
      flash[:notice] = "Table Was Successfully Created"
      redirect_to @table
    else
      render 'new'
    end
  end
  def update
    
    if @table.update(table_params)
      flash[:notice] = "Table Was Successfully Updated"
      redirect_to @table
    else
      render 'edit'
    end
  end
  def destroy
   
    @table.destroy
    redirect_to table_index_path
  end
end
private
def set_table
  @table = Table.find(params[:id])
end
def table_params
  params.require(:table).permit(:Name_of_the_Student, 
    :Class, 
    :Email_Id, 
    :Date_of_birth, 
    :Residential_Area, 
    :Contact_Number, 
    :Fathers_Name, 
    :Occupation_of_Father, 
    :Fathers_Contact_Number, 
    :Mothers_Name, 
    :Occupation_of_Mother, 
    :Mothers_Contact_Number)
end