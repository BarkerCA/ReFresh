class AboutController < ApplicationController
  def refresh
    @page = {:title => 'About ReFresh Ministries', :head_title => 'ReFresh Ministries'}
  end

  def cal
    @page = {:title => 'About Cal Woods', :head_title => 'Cal Woods'}
  end
end
