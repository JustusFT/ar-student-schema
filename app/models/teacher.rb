require_relative '../../db/config'

#taken from http://guides.rubyonrails.org/v3.2.13/active_record_validations_callbacks.html#custom-validators
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Teacher < ActiveRecord::Base
  validates :email, :email => true, :uniqueness => true
  has_and_belongs_to_many :students
end
