class HomeController < ApplicationController
  def index
    @page = {:title => 'Welcome Home', :head_title => 'Home'}
  end
end
