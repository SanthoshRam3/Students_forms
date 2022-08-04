class TableController < ApplicationController
  def show
    @table = Table.find(params[:id])
  end
  def index
    @tables = Table.all
    
  end
  def new
    @table = Table.new
  end
  def edit
    @table = Table.find(params[:id])
  end
  def create
    @table = Table.new(params.require(:table).permit(:Name_of_the_Student, 
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
    :Mothers_Contact_Number))

    if @table.save
      flash[:notice] = "Table Was Successfully Created"
      redirect_to @table
    else
      render 'new'
    end
  end
  def update
    @table = Table.find(params[:id])
    if @table.update(params.require(:table).permit(:Name_of_the_Student, 
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
    :Mothers_Contact_Number))
      flash[:notice] = "Table Was Successfully Updated"
      redirect_to @table
    else
      render 'edit'
    end
  end
  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to table_index_path
  end
end
