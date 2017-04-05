require_relative '../config'

# this is where you should use an ActiveRecord migration to
#modify db so that students can have many teaches

class UpdateAssociations < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students_teachers do |t|
      t.belongs_to :students, index: true
      t.belongs_to :teachers, index: true
    end
    remove_column :students, :teacher_id, :integer
  end
end
