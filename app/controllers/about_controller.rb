class AboutController < ApplicationController
  def refresh
    @page = {:title => 'About ReFresh Ministries', :head_title => 'ReFresh Ministries'}
  end

  def cal
    @page = {:title => 'About Cal Woods', :head_title => 'Cal Woods'}
  end
  
  def ron
    @page = {:title => 'About Ron Sylvia', :head_title => 'Ron Sylvia'}
  end
end
