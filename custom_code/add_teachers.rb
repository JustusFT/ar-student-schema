require_relative '../app/models/teacher.rb'
teacher1 = Teacher.new
teacher1.assign_attributes(
  :first_name => "Otis",
  :last_name => "Townsley",
  :email => 'OtisBTownsley@dayrep.com',
  :phone => '303-347-3391'
)
teacher1.save

teacher2 = Teacher.new
teacher2.assign_attributes(
  :first_name => "Charles",
  :last_name => "Cooper",
  :email => 'CharlesACooper@dayrep.com',
  :phone => '561-642-4254'
)
teacher2.save

teacher3 = Teacher.new
teacher3.assign_attributes(
  :first_name => "Ada",
  :last_name => "Carrier",
  :email => 'AdaLCarrier@armyspy.com',
  :phone => '703-441-8785'
)
teacher3.save

teacher4 = Teacher.new
teacher4.assign_attributes(
  :first_name => "George",
  :last_name => "Harper",
  :email => 'GeorgeBHarper@jourrapide.com',
  :phone => '610-913-9127'
)
teacher4.save

teacher5 = Teacher.new
teacher5.assign_attributes(
  :first_name => "Richard",
  :last_name => "Pelzer",
  :email => 'RichardDPelzer@teleworm.us',
  :phone => '909-948-4759'
)
teacher5.save

teacher6 = Teacher.new
teacher6.assign_attributes(
  :first_name => "Gregory",
  :last_name => "Graves",
  :email => 'GregoryLGraves@rhyta.com',
  :phone => '509-874-8547'
)
teacher6.save

teacher7 = Teacher.new
teacher7.assign_attributes(
  :first_name => "William",
  :last_name => "Powers",
  :email => 'WilliamSPowers@teleworm.us',
  :phone => '812-360-5901'
)
teacher7.save

teacher8 = Teacher.new
teacher8.assign_attributes(
  :first_name => "Jennifer",
  :last_name => "Wu",
  :email => 'JenniferMWu@teleworm.us',
  :phone => '718-200-3770'
)
teacher8.save

teacher9 = Teacher.new
teacher9.assign_attributes(
  :first_name => "Theresa",
  :last_name => "Golden",
  :email => 'TheresaTGolden@armyspy.com',
  :phone => '330-644-3563'
)
teacher9.save
