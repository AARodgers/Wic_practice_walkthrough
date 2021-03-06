# require "tty-prompt"

class WicPracticeWalkthrough::CLI

  attr_reader :prompt

  def call
    system("clear")
    welcome
    select_option
  end

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to the Denver Health WIC Clinics App!"
    puts ""
  end

  def return_to_main_menu
    return_options = prompt.select("Select Main Menu or More Information About WIC:", ["Main Menu", "More Information About WIC"])
    system("clear")
    case return_options
    when "Main Menu"
      call
    when "More Information About WIC"
      more_wic_info
      return_to_main_menu
    end
  end

  def return_to_only_main_menu
    return_menu = prompt.select("Select to return to main menu:", ["Main Menu"])
    case return_menu
    when "Main Menu"
      call
    end
  end

  def more_wic_info
    puts "WIC: The Special Supplemental Nutrition Program for Women, Infants, and Children (WIC) is a nutrition program that provides nutritious groceries, nutrition education, breastfeeding support and other services free of charge to Colorado families who qualify. WIC’s goal is to help keep pregnant and breastfeeding women and children under age 5 healthy."
  end

  def select_option
    input = prompt.select("Please select an option:", ["See a list of Denver WIC Clincs", "Get more information about WIC", "Exit"])
    case input
    when "See a list of Denver WIC Clincs"
      list_of_all_clinics
    when "Get more information about WIC"
      more_wic_info
      puts ""
      return_to_only_main_menu
    when "Exit"
      goodbye
    end
  end

  def list_of_all_clinics
    clinic_info = prompt.select("Please pick a clinic for more information or exit:", ["Lowry Family Health Center WIC Clinic", "Eastside Neighborhood Health Center", "Montbello WIC Clinic", "North Broadway Wic Clinic", "Colorado Department of Public Health & Environment", "Westside Family Health Center WIC Clinic", "Exit"])
    system("clear")

    case clinic_info
    when "Lowry Family Health Center WIC Clinic"
      puts "Lowry Family Health Center WIC Clinic Info:"
      puts ""
      puts WicPracticeWalkthrough::Clinics.scrape_clinic_info(0)
      puts ""
    when "Eastside Neighborhood Health Center"
      puts "Eastside Neighborhood Health Center Info:"
      puts ""
      puts WicPracticeWalkthrough::Clinics.scrape_clinic_info(1)
      puts ""
    when "Montbello WIC Clinic"
      puts "Montbello WIC Clinic Info:"
      puts ""
      puts  WicPracticeWalkthrough::Clinics.scrape_clinic_info(2)
      puts ""
    when "North Broadway Wic Clinic"
      puts  "North Broadway Wic Clinic Info:"
      puts  WicPracticeWalkthrough::Clinics.scrape_clinic_info(3)
      puts ""
    when "Colorado Department of Public Health & Environment"
      puts  "Colorado Department of Public Health & Environment Info:"
      puts ""
      puts  WicPracticeWalkthrough::Clinics.scrape_clinic_info(5)
      puts ""
    when "Westside Family Health Center WIC Clinic"
      puts  "Westside Family Health Center WIC Clinic Info:"
      puts ""
      puts WicPracticeWalkthrough::Clinics.scrape_clinic_info(6)
      puts ""
    when "Exit"
      goodbye
    end

    return_to_main_menu
  end

  def goodbye
    puts ""
    puts "Have a Great Day and go to Eatright.org to get more information about Healthy Eating!"
    exit
  end
end
