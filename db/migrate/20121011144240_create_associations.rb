require_relative '../config'

# this is where you should use an ActiveRecord migration to
#add associations to file

class CreateAssociations < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    add_column :students, :teacher_id, :integer
  end
end
