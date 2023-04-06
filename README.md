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

## Day 1 - Planning

I decided to create a budget app, and began by planning out how the user could use the app:

### User Stories

- As a user, I want to be able to sign up for an account.
- As a user, I want to be able to login into my profile.
- As a user, I want to be able to sign out of my profile.
- As a user, I want to be able to delete my account.
- As a user, I want to be able to view my dashboard so that I can keep track of my expenses.
- As a user, I want to be able to add a transaction category.
- As a user, I want to be able to add product details of my transactions.
- As a user, I want to be able to edit product details of my transactions.
- As a user, I want to be able to remove product details of my transactions.

## Wireframe
 
 - Using wireframes created in Figma as a guide for my design allowed me to have a clear vision of how I wanted my app to look:

![Screenshot 2023-03-03 at 14 51 04](https://user-images.githubusercontent.com/114579141/222751688-eeb4be01-1658-4377-9b66-08471577abac.png)

![Screenshot 2023-03-03 at 14 51 13](https://user-images.githubusercontent.com/114579141/222751713-cc67deaa-53af-4972-a0b0-9022d0e7e93a.png)
 
 - Because I used Bootstrap to style my last two projects, I wanted to challenge myself this time by using SASS to do the styling. 
 - With SASS, I created a unique design to set my app apart, and provide an enjoyable user experience.

## ERD
 
 - I then created an ERD using the online SmartDraw tool.
 - The ERD is a visual representation of the relationships between the entities in the database.
 - This helped me to plan out what models I would need to create in my database and what data headings and data types each table would need, allowing me to have a clear idea of the database structure before implementing it.

![Screenshot 2023-03-03 at 13 42 20](https://user-images.githubusercontent.com/114579141/222735096-9f7f6f85-b73c-48bc-9ae6-29475a6fc9ca.png)

#### Active Record Associations

- Expenses belongs_to User.
- Expenses belongs_to Category.
- User has_many Expenses.
- User has_many Categories, through Expenses.
- Category has_many Expenses.
- Category has_many Users, through Expenses.
 
## Day 2 - 4 - Build Process

 - To create the initial Rails app, I used the Rails new command with the following options:
    - rails new todo_app --database=postgresql --javascript=esbuild --css=sass
    - This command generated a new Rails app with the name todo_app, and configured it to use PostgreSQL as the database, ESBuild as the JavaScript compiler, and Sass as the CSS preprocessor.
    - By specifying these options upfront, it helped streamline the initial setup process and ensure that the app was set up in a way that aligned with my preferences and requirements. 
 - The next step in building my Rails app was creating a welcome page. To do this, I created a controller and a view file called home.html.erb in the views directory.
 - I created a logo on Canva to show on the welcome page and throughout the app in the NavBar.
 - For creating the Navbar, I used the website Web Design Vista for guidance as this was my first time creating a navbar without Bootstrap. I really enjoyed this challenge as it allowed me to flex my creative muscles.
 - In the code, I used HTML and embedded Ruby to create the navbar:
 
 ![ruby navbar](https://user-images.githubusercontent.com/114579141/230335282-8301de82-f3d8-4700-a251-ba5ac2095347.png)

 - The navbar contains the logo image I created on canva.
 - I added a conditional statement that checks if there is a current user logged in. If there is, it displays the username and logout button, and if not, it displays a login link.
 - The navbar is included in the shared file, which means that it will appear on every page of the app without having to repeat the same code.
 - Here, you can also see that I used the Turbo method in my app to handle the logout functionality meaning I was able to send a DELETE request to the server and confirm with the user before logging them out. This provides a smoother user experience by updating the page without a full reload.

## Database Configuration

I created the User and Transaction tables for the database using db:create and db:migrate commands:

![create user table](https://user-images.githubusercontent.com/114579141/230336169-ae3c5103-64eb-4a1b-8f41-ef6dc2e1987f.png)
![create trans table](https://user-images.githubusercontent.com/114579141/230336211-abf24d09-e445-4fb1-aa45-9c8b6a3e6ecd.png)
 
I then seeded the database with 5 dummy users and created some transactions for each user:

![seeds](https://user-images.githubusercontent.com/114579141/230336728-29c8bd19-e7cf-4b5c-9cc0-693c53845635.png)

### Models and Controllers

In Rails, the Model-View-Controller (MVC) architecture is used to organise code and separate different concerns in the application. Models are responsible for handling data and interacting with the database. From the app/models directory, here is the User model in my application:
 
![user](https://user-images.githubusercontent.com/114579141/230337362-ef317fa0-d335-497e-9518-a973e6ec74cc.png)


 - This model represents a user of my application and contains various attributes such as first name, last name, email, and password. 
 - The ‘has_many :transactions’ association indicates that a user can have multiple transactions.
 - The ‘dependent: :destroy’ option ensures that when a user is deleted, all of their associated transactions are also deleted.

 - Here is a code snippet from my sessions controller:
 
 
 
 
 
