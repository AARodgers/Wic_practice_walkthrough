# require "tty-prompt"

class WicPracticeWalkthrough::CLI

  attr_reader :prompt

  def call
    system("clear")
    welcome
    menu
  end

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to the Denver Health WIC Clinics App!"
    puts ""
  end

  def exit_program
    system("clear")
    puts ""
    puts "Have a Great Day and go to Eatright.org to get more information about Healthy Eating!"
  end

  def more_wic_info
    system("clear")
    puts "WIC: The Special Supplemental Nutrition Program for Women, Infants, and Children (WIC) is a nutrition program that provides nutritious groceries, nutrition education, breastfeeding support and other services free of charge to Colorado families who qualify. WIC’s goal is to help keep pregnant and breastfeeding women and children under the age of 5 healthy."
    menu_or_exit
  end

  def menu_or_exit
    return_options = prompt.select("Select Main Menu or Exit:", ["Main Menu", "Exit"])
    case return_options
    when "Main Menu"
      system("clear")
      menu
    when "Exit"
      system("clear")
      exit_program
    end
  end

  def menu
    menu_options = prompt.select("Select 'List' to see a list of WIC Clinics, 'WIC Info' to get more information about WIC or 'Exit' to exit the program: ", ["List", "WIC Info", "Exit"])
    case menu_options
    when "List"
      system("clear")
      puts ""
      puts "Here is a list of WIC Denver Clinics and their information:"
      puts ""
      Scraper.new.print_clinics
      menu_or_exit
    when "WIC Info"
      system("clear")
      more_wic_info
      menu_or_exit
    when "Exit"
      system("clear")
      exit_program
    end
  end
end
