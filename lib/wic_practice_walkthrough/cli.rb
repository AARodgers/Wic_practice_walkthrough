# require "tty-prompt"

class WicPracticeWalkthrough::CLI

  attr_reader :prompt

  def call
    welcome
    select_option
  end

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to the Denver Health WIC Clinics App!"
  end

  def select_option
    input = prompt.select("Please select an option:", ["See a list of Denver WIC Clincs", "Get more information about WIC", "Exit"])
    case input
    when "See a list of Denver WIC Clincs"
      list_of_all_clinics
    when "Get more information about WIC"
      puts "WIC: The Special Supplemental Nutrition Program for Women, Infants, and Children (WIC) is a nutrition program that provides nutritious groceries, nutrition education, breastfeeding support and other services free of charge to Colorado families who qualify. WIC’s goal is to help keep pregnant and breastfeeding women and children under age 5 healthy."
    when "Exit"
      goodbye
    end
  end

  def list_of_all_clinics
    clinic_info = prompt.select("Please pick a clinic for more information or exit:", ["Lowry Family Health Center WIC Clinic", "Eastside Neighborhood Health Center", "Montbello WIC Clinic", "North Broadway Wic Clinic", "Colorado Department of Public Health & Environment", "Westside Family Health Center WIC Clinic", "Exit"])
    case clinic_info
    when "Lowry Family Health Center WIC Clinic"
      system("clear")
      puts "Lowry Family Health Center WIC Clinic Info:"
      puts WicPracticeWalkthrough::Clinics.scrape_lowry_clinic
    when "Eastside Neighborhood Health Center"
      system("clear")
      puts "Eastside Neighborhood Health Center Info:"
      puts WicPracticeWalkthrough::Clinics.scrape_eastside_clinic
    when "Montbello WIC Clinic"
      system("clear")
      puts "Montbello WIC Clinic Info:"
      puts  WicPracticeWalkthrough::Clinics.scrape_montbello_clinic
    when "North Broadway Wic Clinic"
      system("clear")
      puts  "North Broadway Wic Clinic Info:"
      puts  WicPracticeWalkthrough::Clinics.scrape_northbroadway_clinic
    when "Colorado Department of Public Health & Environment"
      system("clear")
      puts  "Colorado Department of Public Health & Environment Info:"
      puts  WicPracticeWalkthrough::Clinics.scrape_dphe_clinic
    when "Westside Family Health Center WIC Clinic"
      system("clear")
      puts  "Westside Family Health Center WIC Clinic Info:"
      puts WicPracticeWalkthrough::Clinics.scrape_westside_clinic
    when "Exit"
      goodbye
    end
  end

  def goodbye
    puts "Have a Great Day and go to Eatright.org to get more information about healthy eating!"
  end
end
