class ContactsController < ApplicationController

  # GET /Contacts/new
  def new
    @page = {:title => 'Contact ReFresh Ministries', :head_title => 'Contact ReFresh Ministries'}
    @contact = Contact.new
  end

  # POST /Contacts
  # POST /Contacts.json
  def create
    if is_human?
      @contact = Contact.new(contact_params)
      respond_to do |format|
        if @contact.save
          MessageMailer.contact_email(@contact).deliver_now
          MessageMailer.thankyou_email(@contact).deliver_now
          format.html { redirect_to '/contact/finished/' + is_human?.to_s }
          format.json { render :show, status: :created, location: @contact }
        else
          format.html { render :new }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
    else
      @message = Message.new(message_params)
      respond_to do |format|
        @msg = "The answer to the challenge question is not #{params[:challenge]}"
        format.html { render :new}
      end
    end
  end
  
  def finished
    if params[:data] == 'nosend'
      @page = {:title => 'Error Sending', :head_title => 'Error Sending'}
      @msg = '<p data-alert class="alert-box alert radius">We had a problem saving your information!<a href="#" class="close">&times;</a></p><p class="text-center"><a class="button" href="/contact">Please Try Again</a></p>'
    elsif params[:data] == "true"
      @page = {:title => 'Thank You For Contacting ReFresh Ministries', :head_title => 'Thank You!'}
      @msg = '<p data-alert class="alert-box success radius">We have received your message and will get back to you as soon as possible.<a href="#" class="close">&times;</a></p>'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :telephone, :memo, :answer)
      #params.permit(:first_name, :last_name, :email, :telephone, :memo)
    end
    
    def is_human?
      if params[:challenge].downcase! == "green" or params[:challenge] == "green"
        a = true
      elsif params[:challenge] == ""
        a = false
      else
        a = false
      end
    end

end