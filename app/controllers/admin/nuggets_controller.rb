class Admin::NuggetsController < ApplicationController
  before_filter :require_authorization
  before_action :set_nugget, only: [:show, :edit, :update, :destroy]

  # GET /nuggets
  # GET /nuggets.json
  def index
    @page = {:title => 'Nuggets Admin', :head_title => 'Nuggets Admin'}
    @nuggets = Nugget.all.reverse
  end

  # GET /nuggets/1
  # GET /nuggets/1.json
  def show
    @page = {:title => "#{@nugget.title}", :head_title => 'Viewing Nugget'}
  end

  # GET /nuggets/new
  def new
    @page = {:title => 'New Nugget', :head_title => 'New Nugget'}
    @nugget = Nugget.new
  end

  # GET /nuggets/1/edit
  def edit
    @page = {:title => "#{@nugget.title}", :head_title => 'Editing Nugget'}
  end

  # POST /nuggets
  # POST /nuggets.json
  def create
    @nugget = Nugget.new(nugget_params)

    respond_to do |format|
      if @nugget.save
        format.html { redirect_to admin_nuggets_path(@nugget), notice: 'Nugget was successfully created.' }
        format.json { render :show, status: :created, location: @nugget }
      else
        format.html { render :new }
        format.json { render json: @nugget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nuggets/1
  # PATCH/PUT /nuggets/1.json
  def update
    respond_to do |format|
      if @nugget.update(nugget_params)
        format.html { redirect_to admin_nuggets_path(@nugget), notice: 'Nugget was successfully updated.' }
        format.json { render :show, status: :ok, location: @nugget }
      else
        format.html { render :edit }
        format.json { render json: @nugget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nuggets/1
  # DELETE /nuggets/1.json
  def destroy
    @nugget.destroy
    respond_to do |format|
      format.html { redirect_to admin_nuggets_url, notice: 'Nugget was successfully deleted.' }
      format.json { head :no_content }
    end
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
    
    def require_authorization
      redirect_to admin_log_in_path, :notice => "You must be logged in for access." unless session[:user_id]
    end
end
