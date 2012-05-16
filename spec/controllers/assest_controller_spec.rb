require 'spec_helper'

describe AssestController do

  def valid_attributes
    {
        :assest_no=>'2',
         :assest_type=>'assest_test' ,
        :issue_date =>'12-09-2012'
    }

  end

  def invalid_attributes
    {
        :assest_no=>'3' ,
       :assest_type=>'',
        :issue_date=>'14-11-2-2012'

    }
  end

  #index
  #
  #it "should have a  method 'index'"  do
  #          ast=Assest.create! valid_attributes
  #          get :index,
  #          assigns(:ast) .should_eq([ast])
  #  end

  #show

  it "should have method 'show'" do
    ast=Assest.create! valid_attributes
    get :show,  :id=>ast.id
    assigns(:ast).should eq(ast)
  end


end
