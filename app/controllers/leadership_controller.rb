class LeadershipController < ApplicationController
  before_action :set_nugget, only: [:nugget]
  
  def nugget
    @page = {:title => 'Leadership Nuggets', :head_title => 'Leadership Nuggets'}
  end
  
  def nuggets
    @page = {:title => 'Leadership Nuggets', :head_title => 'Leadership Nuggets'}
    @nuggets = Nugget.all.reverse_order
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nugget
      @nugget = Nugget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nugget_params
      params.require(:nugget).permit(:title, :body)
    end

end
