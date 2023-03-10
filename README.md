# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# Budget-Planner-Pal

A helpful way to track your expenses

## Technology

- Full stack Ruby on Rails
- PostgreSQL
- Devise
- CSS/SASS
- Figma/Canva
- Awesome Fonts


## User Stories

- As a user, I want to be able to sign up for an account
- As a user, I want to be able to login into my profile
- As a user, I want to be able to sign out of my profile
- As a user, I want to be able to delete my account
- As a user, I want to be able to view my dashboard so that I can keep track of my expenses
- As a user, I want to be able to add a transaction category
- As a user, I want to be able to add product details of my transactions
- As a user, I want to be able to edit product details of my transactions
- As a user, I want to be able to remove product details of my transactions

## Wireframe

![Screenshot 2023-03-03 at 14 51 04](https://user-images.githubusercontent.com/114579141/222751688-eeb4be01-1658-4377-9b66-08471577abac.png)

![Screenshot 2023-03-03 at 14 51 13](https://user-images.githubusercontent.com/114579141/222751713-cc67deaa-53af-4972-a0b0-9022d0e7e93a.png)

## ERD

![Screenshot 2023-03-03 at 13 42 20](https://user-images.githubusercontent.com/114579141/222735096-9f7f6f85-b73c-48bc-9ae6-29475a6fc9ca.png)

#### Active Record Associations

- Expenses belongs_to User
- Expenses belongs_to Category
- User has_many Expenses
- User has_many Categories, through Expenses
- Category has_many Expenses
- Category has_many Users, through Expenses
