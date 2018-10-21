class AllotedNumber < ApplicationRecord

  validates_presence_of :first_name, :last_name
  validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number are allowed"
  validate :valid_number

  before_validation :strip_dash_from_number
  before_create :check_availability_and_assign_number

  def check_availability_and_assign_number
    if number
      if AllotedNumber.where(number: number).any?
        number = get_available_number
      end
    else
      number = get_available_number
    end
  end

  def strip_dash_from_number
    number = number.gsub('-', '').gsub(' ', '')
  end

  def valid_number
    (1111111111..9999999999).include?(number)
  end

  def get_available_number
    alloted_numbers = AllotedNumber.pluck(:number)
  end
end
