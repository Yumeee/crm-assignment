require_relative 'contact'

class CRM

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
  end

  def add_new_contact
    print "Enter first name:"
    first_name = gets.chomp

    print "Enter last name:"
    last_name = gets.chomp

    print "Enter email:"
    email = gets.chomp

    print "Enter notes about this contact:"
    note = gets.chomp

    Contact.create(first_name, last_name, email,note)
  end

  def modify_existing_contact(contact)
    self.find_by(attribute, value)
    contact.update
    end
  end

  def delete_contact(contact)
    @@contacts.delete(contact)
  end

  def display_all_contacts
    p Contact.all
    return @@contacts
  end

  def search_by_attribute
    @@contacts.each do |attribute|
    end
  end
end



yumee = Contact.new("Yumee", "Lee", "yumeehk@hotmail.com", "no notes")
charlotte = Contact.new("Charlotte", "Louis", "chaloui@gmail.com", "paris")
puts yumee
p yumee.first_name
p yumee.last_name
# p yumee.update
# puts Contact.find_by("first_name", "Yumee")
# Contact.delete_all
# p display_all_contacts

program = CRM.new
program.main_menu
