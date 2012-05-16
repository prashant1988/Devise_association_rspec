require 'spec_helper.rb'

describe EmpController do


  # index

  def valid_attributes
    {

        :name => "test",
        :age => 2,
        :address => "testing"
    }
  end
  def invalid_attributes
    {
        :name => " ",
        :age => 2,
        :address => "testing"
    }
  end



  it "should have index method" do
      emp=Emp.create! valid_attributes
      get :index
      assigns(:emp).should eq([emp] )
  end


  #show

  it "should have show method" do
      emp=Emp.create! valid_attributes
      get :show , :id=>emp.id
      assigns(:emp).should eq(emp)

  end

  #edit

  it "should have a edit method  "  do
      emp=Emp.create! valid_attributes
      get :edit ,  :id=>emp.id
      response.should render_template('edit')

  end

  #update

  it "should have a update save method"   do
      emp=Emp.create! valid_attributes
      put :update  ,:id=>emp.id,
      :emp => valid_attributes
      response.should redirect_to(emp_index_path)

  end

  it "should have a unsaved update method " do
        emp=Emp.create! valid_attributes
        put :update,    :id=>emp.id,
        :emp=>invalid_attributes
        response.should render_template('edit')
  end


  #new

  it "should have new method" do
       get :new
       response.should render_template('new')
  end

  #create

  it "should have  create method" do
        post :create, :emp => valid_attributes
        response.should redirect_to(emp_index_path)
  end

  it "should have  unsaved create method" do
     #emp=Emp.create! invalid_attributes
         post :create, :emp=> invalid_attributes
         response.should render_template('new')
  end

end
