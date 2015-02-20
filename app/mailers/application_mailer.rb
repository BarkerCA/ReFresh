class ApplicationMailer < ActionMailer::Base
  name = "ReFresh Ministries"
  email = "contact@refresh-ministries.org"
  default from: %("#{name}" <#{email}>)
  layout 'mailer'
end
