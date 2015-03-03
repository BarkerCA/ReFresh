class HomeController < ApplicationController
  def index
    @page = {:title => 'Welcome to ReFresh Ministries', :head_title => 'Welcome'}
    @nuggets = Nugget.last(5).reverse
    @contact = Contact.new
  end

end
