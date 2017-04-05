require_relative '../config'
require 'byebug'
# require_relative '../../app/models/student.rb'

# this is where you should use an ActiveRecord migration to
#modify db so that students can have many teaches

class UpdateNames < ActiveRecord::Migration
  def up
    add_column :students, :name, :string
    Student.find_each do |x|
      x.name = "#{x.first_name} #{x.last_name}"
      x.save!
    end
    remove_column :students, :first_name, :string
    remove_column :students, :last_name, :string
  end
  def down
    # students = Student.all.pluck(:name)
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    Student.all.each do |x|
      name = x[:name].split(" ")
      # byebug
      x.first_name = name[0]
      x.last_name = name[1]
      x.save!
      # byebug
    end
    remove_column :students, :name, :string
  end
end
