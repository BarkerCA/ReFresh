class MessageMailer < ApplicationMailer
  default from: 'contact@refresh-ministries.org'
  
  def contact_email(contact)
    #
    # contact is an object expected to have the following attributes
    # :first_name, :last_name, :email, :telephone, :memo
    # 
    @user = contact
    @url = 'http://www.refresh-ministries.org'
    mail(to: @user[:email], subject: 'Sample Rails Email')
  end
  
end