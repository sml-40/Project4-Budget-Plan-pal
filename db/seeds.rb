# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: "Marc", last_name: "Lavery", email: "marc@email.com", username: "marc", password: "pass1234")
User.create(first_name: "John", last_name: "Doe", email: "john@email.com", username: "john", password: "pass1234")
User.create(first_name: "Jane", last_name: "Doe", email: "jane@email.com", username: "jane", password: "pass1234")
User.create(first_name: "Bob", last_name: "Smith", email: "bob@email.com", username: "bob", password: "pass1234")
User.create(first_name: "Sally", last_name: "Jones", email: "sally@email.com", username: "sally", password: "pass1234")

Transaction.create(title: "Groceries", amount: 100, transaction_date: "2021-03-01", category: "Food", user_id: 1)
Transaction.create(title: "Dinner", amount: 50, transaction_date: "2021-03-02", category: "Food", user_id: 1)
Transaction.create(title: "Movie", amount: 20, transaction_date: "2021-03-03", category: "Entertainment", user_id: 1)
Transaction.create(title: "Concert", amount: 100, transaction_date: "2021-03-04", category: "Entertainment", user_id: 1)
Transaction.create(title: "Flight", amount: 500, transaction_date: "2021-03-05", category: "Travel", user_id: 1)
Transaction.create(title: "Hotel", amount: 200, transaction_date: "2021-03-06", category: "Travel", user_id: 1)
Transaction.create(title: "Groceries", amount: 100, transaction_date: "2021-03-01", category: "Food", user_id: 2)
Transaction.create(title: "Dinner", amount: 50, transaction_date: "2021-03-02", category: "Entertainment", user_id: 2)
Transaction.create(title: "Movie", amount: 20, transaction_date: "2021-03-03", category: "Entertainment", user_id: 2)
Transaction.create(title: "Concert", amount: 100, transaction_date: "2021-03-04", category: "Entertainment", user_id: 2)
Transaction.create(title: "Flight", amount: 500, transaction_date: "2021-03-05", category: "Travel", user_id: 2)
Transaction.create(title: "Hotel", amount: 200, transaction_date: "2021-03-06", category: "Travel", user_id: 2)
Transaction.create(title: "Groceries", amount: 100, transaction_date: "2021-03-01", category: "Food", user_id: 3)
Transaction.create(title: "Dinner", amount: 50, transaction_date: "2021-03-02", category: "Entertainment", user_id: 3)
Transaction.create(title: "Movie", amount: 20, transaction_date: "2021-03-03", category: "Entertainment", user_id: 3)
Transaction.create(title: "Concert", amount: 100, transaction_date: "2021-03-04", category: "Entertainment", user_id: 3)
Transaction.create(title: "Flight", amount: 500, transaction_date: "2021-03-05", category: "Travel", user_id: 3)
Transaction.create(title: "Hotel", amount: 200, transaction_date: "2021-03-06", category: "Travel", user_id: 3)
Transaction.create(title: "Groceries", amount: 100, transaction_date: "2021-03-01", category: "Food", user_id: 4)
Transaction.create(title: "Dinner", amount: 50, transaction_date: "2021-03-02", category: "Food", user_id: 4)
Transaction.create(title: "Movie", amount: 20, transaction_date: "2021-03-03", category: "Entertainment", user_id: 4)
Transaction.create(title: "Concert", amount: 100, transaction_date: "2021-03-04", category: "Entertainment", user_id: 4)
Transaction.create(title: "Flight", amount: 500, transaction_date: "2021-03-05", category: "Travel", user_id: 4)
Transaction.create(title: "Hotel", amount: 200, transaction_date: "2021-03-06", category: "Travel", user_id: 4)
Transaction.create(title: "Groceries", amount: 100, transaction_date: "2021-03-01", category: "Food", user_id: 5)
Transaction.create(title: "Dinner", amount: 50, transaction_date: "2021-03-02", category: "Entertainment", user_id: 5)
Transaction.create(title: "Movie", amount: 20, transaction_date: "2021-03-03", category: "Entertainment", user_id: 5)
Transaction.create(title: "Concert", amount: 100, transaction_date: "2021-03-04", category: "Entertainment", user_id: 5)
Transaction.create(title: "Flight", amount: 500, transaction_date: "2021-03-05", category: "Travel", user_id: 5)
Transaction.create(title: "Hotel", amount: 200, transaction_date: "2021-03-06", category: "Travel", user_id: 5)