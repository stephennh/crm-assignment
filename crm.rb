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
    note = gets.chomp
    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
