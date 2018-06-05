require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # def self.delete(contact)
  #   @@contacts.delete(contact)
  # end
end

Contact.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end

# This method should initialize the contact's attributes
#   def initialize(first_name,last_name, email, note)
#     @first_name = first_name
#     @last_name = last_name
#     @email = email
#     @note = note
#     @id = @@id
#     @@id += 1
#   end
#
#   def self.create(first_name, last_name, email, note)
#     new_contact = Contact.new(first_name, last_name, email, note)
#     @@contacts << new_contact
#     return new_contact
#   end
#
#   def self.all
#     return @@contacts
#   end
#
#
#   def self.find(id)
#     @@contacts.each do |contact|
#       if id == contact.id
#         return contact
#       end
#     end
#   end
#
#   def update(attribute, new_value)
#     if attribute == "first_name"
#       @first_name = new_value
#     elsif attribute == "last_name"
#       @last_name = new_value
#     elsif attribute == "email"
#       @email = new_value
#     elsif attribute == "note"
#       @note = new_value
#     end
#     return self
#   end
#
#
#
# def self.find_by(attribute, value)
#     @@contacts.each do |contact|
#       if contact.first_name == value
#         return contact
#       elsif contact.last_name == value
#         return contact
#       elsif contact.email == value
#         return contact
#       elsif contact.note == value
#         return contact
#       end
#     end
#   end

# def self.delete_all
#   @@contacts = []
# end
# works
