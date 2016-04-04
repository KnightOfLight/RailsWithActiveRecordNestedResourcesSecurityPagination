# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all



User.create! [
	{ username: "Fiorina", password_digest: 1343},
	{ username: "Trump", password_digest: 1343},
	{ username: "Carson", password_digest: 1343},
	{ username: "Clinton", password_digest: 1343}
]

User.find_by!(username: "Fiorina").create_profile(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
User.find_by!(username: "Trump").create_profile(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
User.find_by!(username: "Carson").create_profile(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
User.find_by!(username: "Clinton").create_profile(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton")


User.find_by!(username: "Fiorina").todo_lists.create(list_name: "jo", list_due_date: Date.today).todo_items.create([{due_date: Date.today, title: "darchar", description: "ext"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"}])
User.find_by!(username: "Trump").todo_lists.create(list_name: "jo2", list_due_date: Date.today).todo_items.create([{due_date: Date.today, title: "darchar", description: "ext"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"}])
User.find_by!(username: "Carson").todo_lists.create(list_name: "jo3", list_due_date: Date.today).todo_items.create([{due_date: Date.today, title: "darchar", description: "ext"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"}])
User.find_by!(username: "Clinton").todo_lists.create(list_name: "jo4", list_due_date: Date.today).todo_items.create([{due_date: Date.today, title: "darchar", description: "ext"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"},{due_date: Date.today, title: "darchar2", description: "ext2"}])

