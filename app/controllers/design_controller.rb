class DesignController < ApplicationController
  def index
    @page = {:title => 'Welcome to ReFresh Ministries', :head_title => 'Welcome'}
  end
end
