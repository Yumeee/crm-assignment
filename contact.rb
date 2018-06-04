class Contact
  @@contacts = []
  @@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name,last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email
    @email
  end

  def email=(email)
    @email = email
  end

  def note
    @note
  end

  def note=(note)
    @note = note
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if id == contact.id
        return contact
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    puts "Which attribute would you like to update: first_name, last_name, email or note?"
    attribute = gets.chomp
    puts "What would you like to change it to?"
    new_value = gets.chomp
    if attribute == "first_name"
      # puts "What is the new first name?"
      # new_first_name = gets.chomp
      @first_name = new_value
    elsif attribute == "last_name"
      # puts "What is the new last name?"
      # new_last_name = gets.chomp
      @last_name = new_value
    elsif attribute == "email"
      # puts "What is the new email?"
      # new_email = gets.chomp
      @email = new_value
    elsif attribute == "note"
      # puts "What is the new note?"
      # new_note = gets.chomp
      @note = new_value
    end
    return self
  end
# method works


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    @@contacts.each do |attribute, value|
      if attribute.first_name == value
        return self
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.each do |contact|
      @@contacts.delete(contact)
    end
  end

  def full_name
    return full_name = "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete(contact)
    @@contacts.delete(contact)
  end
  # Feel free to add other methods here, if you need them.
end
