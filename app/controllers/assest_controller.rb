class AssestController < ApplicationController

  def index
    @emp=Emp.find(params[:id])
     @asts= @emp.assests.all
   end

  def new
    @emp=Emp.find(params[:id])
    @ast=@emp.assests.new
  end

  def create
    @emp=Emp.find(params[:id])
    @ast=@emp.assests.create(params[:assest])

    if @ast.save
      redirect_to :action=>'index' ,:id=>@emp.id
    else
      render 'new'
    end
  end

  def edit
    @ast=Assest.find(params[:id])
    @emp=@ast.emp
  end

  def update
    @ast=Assest.find(params[:id])
    @emp=@ast.emp
    if @ast.update_attributes(params[:assest])
      redirect_to :action=>'index' ,:id=>@emp.id
    else
      render 'edit'
    end
  end

  def show
    @ast=Assest.find(params[:id])

  end

  def delete
    @ast=Assest.find(params[:id])
    @emp=@ast.emp
    if @ast.delete
      redirect_to :action=>'index',:id=>@emp.id
    else
      render 'index'

    end
  end

end