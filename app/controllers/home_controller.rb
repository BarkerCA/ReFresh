class HomeController < ApplicationController
  def index
    @page = {:title => 'Welcome to ReFresh Ministries', :head_title => 'Welcome'}
    @nuggets = Nugget.last(5).reverse
    @contact = Contact.new
  end
  
  def mail_test
    @user = {:first_name => "Chris", :email => 'chris.a.barker@icloud.com'}
    MessageMailer.contact_email(@user).deliver_now
  end
end
