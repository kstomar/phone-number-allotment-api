
class AllotedNumberSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :first_name, :last_name, :number

  def number
    number_to_phone(object.number)
  end
end
