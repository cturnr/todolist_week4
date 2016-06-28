# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
Profile.destroy_all
TodoList.destroy_all
# TodoItem.destroy_all

@user1 = User.create!({username: "Fiorina", password_digest: "password1"})
@user2 = User.create!({username: "Trump", password_digest: "password13"})
@user3 = User.create!({username: "Carson", password_digest: "password12"})
@user4 = User.create!({username: "Clinton", password_digest: "password15"})

@prof1 = Profile.create!(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
@prof2 = Profile.create!(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
@prof3 = Profile.create!(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
@prof4 = Profile.create!(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton",)

@user1.profile = @prof1
@user2.profile = @prof2
@user3.profile = @prof3
@user4.profile = @prof4

@list1 = TodoList.create!(list_name: "Carly list", list_due_date: Date.today + 1.year)
@list2 = TodoList.create!(list_name: "Trump list", list_due_date: Date.today + 1.year)
@list3 = TodoList.create!(list_name: "Carson List", list_due_date: Date.today + 1.year)
@list4 = TodoList.create!(list_name: "Hillary List", list_due_date: Date.today + 1.year)

@user1.todo_lists << @list1
@user2.todo_lists << @list2
@user3.todo_lists << @list3
@user4.todo_lists << @list4


@list1.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This", description: "This is the string1")
@list1.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This too", description: "This string is great")
@list1.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This3", description: "This is the string3")
@list1.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This4", description: "This is the string14")
@list1.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This5", description: "This is the string15")

@list2.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This12", description: "This is the string1")
@list2.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This 2too", description: "This q string is great")
@list2.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This23", description: "This is bit the string3")
@list2.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This24", description: "This is rought the string14")
@list2.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This25", description: "This is the now string15")

@list3.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This22", description: "This is the hamburger string1")
@list3.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This 3too", description: "This pizza string is great")
@list3.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This33", description: "This is the slow string3")
@list3.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This34", description: "This is long the string14")
@list3.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This35", description: "This is news the string15")

@list4.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This4", description: "This is the fantastic string1")
@list4.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This 4too", description: "This string also is great")
@list4.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This43", description: "This is the too string3")
@list4.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This44", description: "This is the best string14")
@list4.todo_items << TodoItem.create!(due_date: Date.today + 1.year, title: "This45", description: "This is the greatest string15")
