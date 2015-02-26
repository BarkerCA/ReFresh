class AboutController < ApplicationController
  def refresh
    @page = {:title => 'The Heart Behind ReFresh Ministries', :head_title => 'Our Heart'}
  end

  def cal
    @page = {:title => "Cal Woods' Biography", :head_title => 'Cal Woods'}
  end
  
  def ron
    @page = {:title => "Ron Sylvia's Biography", :head_title => 'Ron Sylvia'}
  end
end
