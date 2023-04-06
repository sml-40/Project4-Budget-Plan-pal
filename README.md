# Budget-Planner-Pal

I created this full-stack budgeting app using Ruby on Rails and PostgreSQL. It was my fourth project for General Assembly and enabled me to put into practice what I had learned about Ruby during the course.

![budget app](https://imgur.com/c0PuJYv.gif)

## Live Demo
The App is deployed by Heroku and is available [here](https://morning-anchorage-14468.herokuapp.com/)

## Getting Started/Code Installation

To access and run the code for this project, follow these steps:
 - Clone the project repository from GitHub. You can do this by clicking on the green "Code" button and selecting "Download ZIP" to download a zipped version of the code, or by copying the repository URL and running git clone in your terminal.
 - Navigate to the project directory by running cd <project-name> in your terminal.
 - Install the necessary dependencies by running bundle install in your terminal.
 - Create a new PostgreSQL database for the project by running rails db:create in your terminal.
 - Run the database migrations by running rails db:migrate in your terminal.
 - (Optional) Seed the database with initial data by running rails db:seed in your terminal.
 - Start the Rails server by running rails server in your terminal.
 - Open your web browser and navigate to http://localhost:3000 to view the project.
 
## Timeframe

5 days - solo project

## Technology

- Full stack Ruby on Rails
- PostgreSQL for database
- Devise for authentication
- CSS/SASS for styling
- Figma for wireframes
- Canva for logo styling
- Awesome Fonts for styling icons

## Brief
 - Build a full stack web application. Must be your own work.
 - Select a Project Idea of your own.
 - Have at least 2 models (more if it makes sense).
    - Auth is a requirement.
 - Have full CRUD on at least one of your models.
 - Be able to Add/Delete on any remaining models.
 - Have high quality code:
    - Follow accepted naming conventions.
    - Consistent indentation.
    - Well-structured and readable code.
    - Semantic naming of variables, functions, CSS classes, etc.
    - Short and clear functions that do one thing.
    - Efficient code - if you have your MVP, refactor.
    - DRY (Don't Repeat Yourself) code.
 - Use one of these technology stacks. You may choose which tech stack.
    - Full-Stack Rails App.
    - Rails API with React Front-End.
    - Express API with React Front-End.
 - Be deployed on Heroku or similar platform.
 - Craft a README.md file that explains your app.



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
