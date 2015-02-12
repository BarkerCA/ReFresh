class Admin::ContactsController < ApplicationController
  before_filter :require_authorization
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /Contacts
  # GET /Contacts.json
  def index
    @page = {:title => 'Messages Admin', :head_title => 'Messages Admin'}
    @contacts = Contact.all.reverse
  end

  # GET /Contacts/1
  # GET /Contacts/1.json
  def show
    @page = {:title => "#{@contact.first_name}", :head_title => 'Viewing Message'}
  end

  # GET /Contacts/new
  def new
    @page = {:title => 'New Message', :head_title => 'New Message'}
    @contact = Contact.new
  end

  # GET /Contacts/1/edit
  def edit
    @page = {:title => "#{@contact.first_name}", :head_title => 'Editing Message'}
  end

  # POST /Contacts
  # POST /Contacts.json
  def create
    @contact = Contact.new(contact_params)
    if params[:answer].nil?
      if @params.nil?
        @params = {:first_name => "", :last_name => "", :email => "", :telephone => "", :memo => ""}
      else
        @params = params
      end
      render 'error'
    else
      respond_to do |format|
        if @contact.save
          format.html { redirect_to '/contact/sent', notice: 'Thank you for contacting ReFresh Ministries' }
          format.json { render :show, status: :created, location: @contact }
        else
          format.html { render :new }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /Contacts/1
  # PATCH/PUT /Contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to admin_contacts_path(@contact), notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Contacts/1
  # DELETE /Contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to admin_contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      #params.require(:contact).permit(:first_name, :last_name, :email, :telephone, :memo, :answer)
      params.permit(:first_name, :last_name, :email, :telephone, :memo)
    end
    
    def require_authorization
      redirect_to admin_log_in_path, :notice => "You must be logged in for access." unless session[:user_id]
    end
end
