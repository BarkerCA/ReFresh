class ContactController < ApplicationController
  def index
    @page = {:title => 'Contact ReFresh Ministries', :head_title => 'Contact Us'}
  end
  
  def create

  end
  
  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def nugget_params
    params.permit(:first_name, :last_name, :email, :telephone, :memo)
  end
end
