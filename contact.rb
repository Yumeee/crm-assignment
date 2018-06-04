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

  def id
    @id
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end
  # works

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end
  # works

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if id == contact.id
        return contact
      end
    end
  end
  # works

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_value)
    if attribute == "first_name"
      @first_name = new_value
    elsif attribute == "last_name"
      @last_name = new_value
    elsif attribute == "email"
      @email = new_value
    elsif attribute == "note"
      @note = new_value
    end
    return self
  end



  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    @@contacts.each do |contact|
      if contact.first_name == value
        return contact
      elsif contact.last_name == value
        return contact
      elsif contact.email == value
        return contact
      elsif contact.note == value
        return contact
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []
  end
  # works

  def full_name
    return full_name = "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def self.delete(contact)
    @@contacts.delete(contact)
  end
  # works
  # Feel free to add other methods here, if you need them.
end
