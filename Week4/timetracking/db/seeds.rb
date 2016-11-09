# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "The Garden Cafe", description: "Granada, Nicaragua")
projectC = Project.create!(name: "Unleash Potential")
projectD = Project.create!(name: "The Garden Shop")
projectE = Project.create!(name: "The Grasshopper")
projectF = Project.create!(name: "Chez Nous")
projectG = Project.create!(name: "Roots")
projectI = Project.create!(name: "PretManger")
projectJ = Project.create!(name: "ThomasCook")


# The following lines are equivalent// !marks for making sure you get an error if the save fails
TimeEntry.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today, project_id: projectA.id)
# TimeEntry.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today, project: projectA)
projectA.time_entries.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today)

# ---------------------

projectC.time_entries.create!(hours: 3, minutes: 45, comments: "why not?", date: Date.today - 3.days)
projectI.time_entries.create!(hours: 4, minutes: 32, comments: "I did the work", date: Date.yesterday)
projectB.time_entries.create!(hours: 0, minutes: 25, comments: "project finished", date: Date.today)
projectI.time_entries.create!(hours: 9, minutes: 34, comments: "project in process", date: Date.yesterday-2.days)
projectC.time_entries.create!(hours: 1, minutes: 13, comments: "Project execution", date:Date.yesterday-1.day)
