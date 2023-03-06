# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: "Marc", last_name: "Lavery", email: "marc@email.com", username: "marc", password: "pass1234")
User.create(first_name: "John", last_name: "Doe", email: "john@email.com", username: "john", password: "pass1234")
User.create(first_name: "Jane", last_name: "Doe", email: "jane@email.com", username: "jane", password: "pass1234")
User.create(first_name: "Bob", last_name: "Smith", email: "bob@email.com", username: "bob", password: "pass1234")
User.create(first_name: "Sally", last_name: "Jones", email: "sally@email.com", username: "sally", password: "pass1234")

Category.create(name: "Food", user_id: 1)
Category.create(name: "Entertainment", user_id: 1)
Category.create(name: "Travel", user_id: 1)
Category.create(name: "Food", user_id: 2)
Category.create(name: "Entertainment", user_id: 2)
Category.create(name: "Travel", user_id: 2)
Category.create(name: "Food", user_id: 3)
Category.create(name: "Entertainment", user_id: 3)
Category.create(name: "Travel", user_id: 3)
Category.create(name: "Food", user_id: 4)
Category.create(name: "Entertainment", user_id: 4)
Category.create(name: "Travel", user_id: 4)
Category.create(name: "Food", user_id: 5)
Category.create(name: "Entertainment", user_id: 5)
Category.create(name: "Travel", user_id: 5)

Expense.create(name: "Groceries", amount: 100, date: "2021-03-01", category_id: 1)
Expense.create(name: "Dinner", amount: 50, date: "2021-03-02", category_id: 1)
Expense.create(name: "Movie", amount: 20, date: "2021-03-03", category_id: 2)
Expense.create(name: "Concert", amount: 100, date: "2021-03-04", category_id: 2)
Expense.create(name: "Flight", amount: 500, date: "2021-03-05", category_id: 3)
Expense.create(name: "Hotel", amount: 200, date: "2021-03-06", category_id: 3)
Expense.create(name: "Groceries", amount: 100, date: "2021-03-01", category_id: 4)
Expense.create(name: "Dinner", amount: 50, date: "2021-03-02", category_id: 4)
Expense.create(name: "Movie", amount: 20, date: "2021-03-03", category_id: 5)
Expense.create(name: "Concert", amount: 100, date: "2021-03-04", category_id: 5)
Expense.create(name: "Flight", amount: 500, date: "2021-03-05", category_id: 6)
Expense.create(name: "Hotel", amount: 200, date: "2021-03-06", category_id: 6)
Expense.create(name: "Groceries", amount: 100, date: "2021-03-01", category_id: 7)
Expense.create(name: "Dinner", amount: 50, date: "2021-03-02", category_id: 7)
Expense.create(name: "Movie", amount: 20, date: "2021-03-03", category_id: 8)
Expense.create(name: "Concert", amount: 100, date: "2021-03-04", category_id: 8)
Expense.create(name: "Flight", amount: 500, date: "2021-03-05", category_id: 9)
Expense.create(name: "Hotel", amount: 200, date: "2021-03-06", category_id: 9)
Expense.create(name: "Groceries", amount: 100, date: "2021-03-01", category_id: 10)
Expense.create(name: "Dinner", amount: 50, date: "2021-03-02", category_id: 10)
Expense.create(name: "Movie", amount: 20, date: "2021-03-03", category_id: 11)
Expense.create(name: "Concert", amount: 100, date: "2021-03-04", category_id: 11)
Expense.create(name: "Flight", amount: 500, date: "2021-03-05", category_id: 12)
Expense.create(name: "Hotel", amount: 200, date: "2021-03-06", category_id: 12)
Expense.create(name: "Groceries", amount: 100, date: "2021-03-01", category_id: 13)
Expense.create(name: "Dinner", amount: 50, date: "2021-03-02", category_id: 13)
Expense.create(name: "Movie", amount: 20, date: "2021-03-03", category_id: 14)
Expense.create(name: "Concert", amount: 100, date: "2021-03-04", category_id: 14)
Expense.create(name: "Flight", amount: 500, date: "2021-03-05", category_id: 15)
Expense.create(name: "Hotel", amount: 200, date: "2021-03-06", category_id: 15)