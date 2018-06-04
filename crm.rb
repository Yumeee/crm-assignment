require_relative 'contact'

class CRM

  def initialize
  end

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

  def modify_existing_contact
    contact_to_change = search_by_attribute
    puts "Which attribute would you like to update: first_name, last_name, email or note?"
    attribute = gets.chomp
    puts "What would you like to change it to?"
    new_value = gets.chomp
    contact_to_change.update(attribute, new_value)
    return
  end
  # works

  def delete_contact
    puts "Let's find the contact you would like to delete."
    contact_to_delete = search_by_attribute
    Contact.delete(contact_to_delete)
  end

  def display_all_contacts
    p Contact.all
  end
  # works

  def search_by_attribute
    puts "What attribute are you finding the contact by: first_name, last_name, email or note?"
    attribute = gets.chomp
    puts "What's the contact's #{attribute}?"
    value = gets.chomp
    p Contact.find_by(attribute, value)
  end
end



yumee = Contact.create("Yumee", "Lee", "yumeehk@hotmail.com", "no notes")
charlotte = Contact.create("Charlotte", "Louis", "chaloui@gmail.com", "paris")
program = CRM.new
program.main_menu
#
# modify_existing_contact("yumee")


# puts Contact.find_by("first_name", "Yumee")
# Contact.delete_all
# p display_all_contacts
