rake db:drop
rake db:migrate VERSION=20121011144241
cd custom_code
ruby add_students_from_csv.rb
cd ..
rake db:migrate
rake db:migrate VERSION=20121011144241