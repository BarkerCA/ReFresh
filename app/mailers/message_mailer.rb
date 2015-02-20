class MessageMailer < ApplicationMailer
  default from: 'contact@refresh-ministries.org'
  
  def contact_email(contact)
    #
    # contact is an object expected to have the following attributes
    # :first_name, :last_name, :email, :telephone, :memo
    # 
    @user = contact
    mail(to: 'chris@refresh-ministries.org', subject: "New Message For ReFresh Ministries")
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
