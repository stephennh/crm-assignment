require_relative "contact"

class CRM

  def initialize(add, modify, delete, display_all, search_by_attr, exit)
    @add = add
    @modify = modify
    @delete = delete
    @display_all = display_all
    @search_by_attr = search_by_attr
    @exit = leave
  end

  def main_menu
    puts "Would you like to add, modify, delete, display all, search by attribute, or exit?"
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Search by attribute"
    puts "[6] Exit"
    puts "Enter a number:"
  end

  def call_option
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
  end

  def add_new_contact
    print "Enter First Name:"
    first_name = gets.chomp
    print "Enter Last Name:"
    last_name = gets.chomp
    print "Enter Email Address:"
    email = gets.chomp
    print "Enter a Note:"
    note = gets
    new_contact = Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    print "What is the updated First Name:"
    new_first_name = gets.chomp
    if new_first_name = first_name
      @first_name
    else
      new_first_name = @first_name
    end
    print "What is the updated Last Name:"
    new_last_name = gets.chomp
    if new_last_name = last_name
      @last_name
    else
      new_last_name = @last_name
    print "What is the updated email:"
    new_email = gets.chomp
    if new_email = email
      @email
    else
      new_email = @email
    end
    print "What is the new note"
    new_note = gets
    if new_note = note
      @note
    else
      new_note = @note
    end
    Contact.update(first_name, last_name, email, note)
  end

  def delete_contact
    print "What is the name of the contact you'd like to delete?"
    rem_contact = gets.chomp
    Contact.delete(rem_contact)
  end

  def display_all_contacts
    @@contacts.each do [contact]
      puts @@contacts.full_name
  end

  def search_by_attribute(attribute)
    @@contacts.each do [attribute]
      if @@contacts.
  end


end
