class MessageMailer < ApplicationMailer
  name = "ReFresh Ministries"
  email = "contact@refresh-ministries.org"
  default from: %("#{name}" <#{email}>)
  
  def contact_email(contact)
    #
    # contact is an object expected to have the following attributes
    # :first_name, :last_name, :email, :telephone, :memo
    # 
    @user = contact
    mail(to: 'cal@refresh-ministries.org', bcc: 'chris@refresh-ministries.org', subject: "New Message For ReFresh Ministries")
  end
  
  def thankyou_email(contact)
    #
    # contact is an object expected to have the following attributes
    # :first_name, :last_name, :email, :telephone, :memo
    # 
    @user = contact
    mail(to: @user.email, subject: "Thank You For Contacting ReFresh Ministries")
  end
  
end
