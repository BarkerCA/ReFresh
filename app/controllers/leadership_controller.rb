class LeadershipController < ApplicationController
  def nuggets
    @page = {:title => 'Leadership Nuggets', :head_title => 'Leadership Nuggets'}
    
    nugget = Leadership.new
    
    if params[:id]
      @nugget = nugget.single(params[:id])
    else
      @nugget = nugget.all
    end
    
  end
end
