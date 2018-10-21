class AllotedNumber < ApplicationRecord

  validates_presence_of :first_name, :last_name
  validates_format_of :number, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number are allowed", allow_blank: true
  validate :valid_number

  before_validation :strip_dash_from_number
  before_create :check_availability_and_assign_number

  def check_availability_and_assign_number
    if self.number && (AllotedNumber.pluck(:number).include? self.number)
      self.number = nil
    end
    get_available_number
  end

  def strip_dash_from_number
    self.number = self.number.gsub('-', '').gsub(' ', '') if self.number
  end

  def valid_number
    return true unless self.number
    if (self.number.to_i < 1111111111) || (self.number.to_i > 9999999999)
      errors.add(:number, "Please enter a valid number('111-111-1111' - '999-999-9999')")
    end
  end

  def get_available_number
    alloted_numbers = AllotedNumber.pluck(:number)
    until self.number do
      self.number = subscriber_number(alloted_numbers)
    end
    self.number
  end

  def subscriber_number(alloted_numbers)
   random_number = rand.to_s[2..11]
   ((random_number.to_i > 1111111110) && (random_number.to_i < 10000000000) && !alloted_numbers.include?(random_number)) ? random_number : nil
  end
end
