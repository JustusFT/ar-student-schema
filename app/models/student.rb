require_relative '../../db/config'

#taken from http://guides.rubyonrails.org/v3.2.13/active_record_validations_callbacks.html#custom-validators
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class AgeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value >= 5
      record.errors[attribute] << (options[:message] || "is too young")
    end
  end
end

class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.gsub(/[^0-9]/, "").length < 10
      record.errors[attribute] << (options[:message] || "is not a valid number")
    end
  end
end

class Student < ActiveRecord::Base
  require 'date'
  validates :email, :email => true, :uniqueness => true
  validates :age, :age => true
  validates :phone, :phone => true
  has_and_belongs_to_many :teachers

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    ((Date.today - self.birthday) / 365.25).floor
  end
end
