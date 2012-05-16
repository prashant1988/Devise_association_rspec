class EmpController < ApplicationController
  #before_filter :authenticate_user!, :except => [:show, :index]


  def index
  @emp=Emp.all
  end

  def new
    @emp=Emp.new
  end

  def create
    @emp=Emp.new(params[:emp])

    if @emp.save
      redirect_to :action=>'index'
    else
      render 'new'
      end
  end

  def edit
    @emp=Emp.find(params[:id])
  end

  def update
    @emp=Emp.find(params[:id])
     if @emp.update_attributes(params[:emp])
       redirect_to :action=>'index'
     else
      render 'edit'
     end
  end




  def show
    @emp=Emp.find(params[:id])
  end

  def destroy
    @emp=Emp.find(params[:id])
    if @emp.delete
      redirect_to :action=>'index'
    else
      render 'index'

    end
  end

  def check
    @emp =  Emp.find(params[:id])
    @ast= @emp.assests

  end

end
