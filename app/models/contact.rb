class Contact < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :telephone
  validates_presence_of :email
  validates_presence_of :memo
end
