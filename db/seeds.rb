# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Roles
roles = UserRole.create(
  [
    { :name => 'admin', :description => 'Admininstative user'},
    { :name => 'user', :description => 'General user'}
  ])

# Users
users = User.create([
    { :email => 'admin@domain.com', :password => 'secret'},
    { :email => 'user@domain.com', :password => 'secret'}
  ])

# Assign User Roles
admin = User.find_by_email 'admin@domain.com'
admin.roles << UserRole.find_by_name('admin')


