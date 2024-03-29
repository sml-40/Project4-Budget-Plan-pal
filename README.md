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
- SmartDraw for ERD
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
 
 ![sessions controller](https://user-images.githubusercontent.com/114579141/230337855-6f06db96-3523-49f1-856b-4047522734fa.png)

 - The controller classes  handle the incoming requests from the user and direct them to the appropriate model to retrieve and manipulate data.
 - In my example above, the SessionsController is responsible for managing user sessions, which allows users to log in and log out of the application. 
 - The create action handles user authentication by finding the user based on the email provided, checking if the password is correct, and logging the user in if successful:
 
![bpp app](https://user-images.githubusercontent.com/114579141/230339690-9975536f-7874-420e-8f02-de0b06f48864.png)

 - If the authentication fails, the user is redirected back to the login page with a notice. 
 - The destroy action logs the user out by clearing the user's session ID and redirecting them to the login page with a notice that they have been logged out.

### Routes
 - The config/routes.rb file is where the incoming HTTP requests are mapped to the controller actions.
 - This is where I defined the route for the transactions that maps to the TransactionController and the defined routes for the user that maps to the UsersController:
 
![bpp routes](https://user-images.githubusercontent.com/114579141/230340507-ba627ba3-ce1b-4024-96dc-3d1d531cc78d.png)
 
 - The resources method provides a shortcut for defining all the CRUD (create, read, update, delete) routes for a particular resource. For example, the resources :transactions line creates all the necessary routes for the transactions resource, including the index, new, create, show, edit, update, and destroy actions.
 - In addition to resources, I also defined custom routes using the get, post, put, patch, and delete methods. For example, the get '/profile', to: 'registrations#show' and delete '/profile', to: 'registrations#destroy' lines define custom routes for the registration resource.
 - I used the :only option to be used with resources to limit the routes that are generated. For example, the resources :users, only: [:show, :destroy] line creates only the show and destroy actions for the users resource.
 - I used the rails routes -E command to view the routes as it helped to see which routes were available and helped when troubleshooting and also understanding how the application routes are organised:
 
<img width="360" alt="rails routes -e" src="https://user-images.githubusercontent.com/114579141/230341575-6101b2fe-2818-44fb-8f3c-d1a715c2837f.png">
 
## Challenges

 - It was initially challenging to render the transaction data onto the page in a readable and visually appealing manner, where the title, transaction category and date would sit in the correct positions on the left hand side of the element and the cost, plus the edit and delete buttons would sit on the right:

![bpp trans](https://user-images.githubusercontent.com/114579141/230341886-3e1168d2-5c5e-49c3-8d21-179e1daaf861.png)

 - To achieve this, I utilised a loop to iterate through each transaction, retrieving certain data points for display:
 
 <img width="1134" alt="ruby transaction" src="https://user-images.githubusercontent.com/114579141/230342125-e56f33ed-52cb-4ab5-91ad-be0cd8c89794.png">

 - To style the data into a specific layout, I assigned CSS classes to each data element and then used SASS to format the elements according to their respective classes. 

<img width="344" alt="ruby sass" src="https://user-images.githubusercontent.com/114579141/230342306-a8b41dcf-58df-44f9-8769-31a92781c947.png">

## Wins

 - Styling ✨ - I am really proud of how nicely the styling of the app turned out to be. It felt really rewarding to have created my design on Figma and actually having achieved the aesthetics through SASS. 
 - Building a full-stack app in 5 days - I found that creating an app on Ruby on Rails was a joy due to its simplicity. The framework provided straightforward steps for creating each webpage, from defining controllers and views to setting up routes. This made the development process much smoother and more efficient, allowing me to focus on building out the core features of my application and the styling.

## Key Learnings
 
 - I was surprised by how simple it was to create a full stack Rails app in such a short space of time.
 - Rails has simplified the development process greatly, especially in handling sensitive user data like passwords:
    - As shown in the dummy examples from the PostgreSQL database, when a password is stored, it is filtered out for security reasons. This means that even if someone gains access to the database, they will not be able to view the actual passwords of users:

<img width="436" alt="db examples" src="https://user-images.githubusercontent.com/114579141/230343502-59b0808d-1978-4605-86fc-6c7c98d58cb8.png">

 - I felt that compared to other full-stack frameworks like MERN, Rails took care of a lot of the server-side work for me, making it easier and quicker to build web applications. 
 - I was also glad to have used SASS for the styling, it was a big change to Bootstrap, but felt like I had more control over how I wanted the app to look.
 
## Bugs
 
 - When deploying over to the live site through Heroku, one of the models did not migrate over properly, meaning that I do not have full use of the site. I am still working to find a fix for this and will update with the solution soon.
 
## Future Improvements

 - In the future, I plan to add some additional features to the application. One idea is to allow the user to set a budget at the top of their transactions list, and have the budget update dynamically as they add expenses. 
 - Additionally, I would like to integrate a third-party banking API, which would enable the user to view their accounts and expenditure.


 
