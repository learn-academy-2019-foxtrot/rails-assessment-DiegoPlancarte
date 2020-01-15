# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:

  Researched answer:
  The Model
    Contains data for the application (often linked to a database)
    Contains state of the application (e.g. what orders a customer has)
    Contains all business logic
    Notifies the View of state changes (** not true of ROR, see below)
    No knowledge of user interfaces, so it can be reused
    
  The View
    Generates the user interface which presents data to the user
    Passive, i.e. doesn’t do any processing
    Views work is done once the data is displayed to the user.
    Many views can access the same model for different reasons
    
  The Controller
    Receive events from the outside world (usually through views)
    Interact with the model
    Displays the appropriate view to the user

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the Route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the Controller in the file controller/app_controller.rb
  ```
  class AppController < ApplicationController
    def index
      render json: app
    end
  end
  ```

  Step 3: Create the View in the file view/index.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
Used to show all stored information 

/users/1      method="GET"     # :controller => 'users', :action => 'show'
Used to show the information for a specified object

/users/new    method="GET"     # :controller => 'users', :action => 'new'
Used to accept informtation in a form, which will then be used to create a new object

/users/       method="POST"    # :controller => 'users', :action => 'create'
Used to complete the creation of the new object using the information given by the user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
Used to accept informtation in a form, which will then be used to update an existing object

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
Used to change the information of an existing object using the information given by the user

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
Used to remove information of an existing object



3b. Which of the above routes must always be passed params and why?
Show, Edit, Update and Destroy must always be passed params because they are being used to show/edit information for a specific object


4. What is the public folder used for in Rails?

  Your answer:
  Any information that you don't mind, would like to, have available for people visitng the site.

  Researched answer:
  The public directory contains some of the common files for web applications. 
  By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. 
  Files that are inside this directory are available in https://appname.com/filename directly.


5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  get "main/game/:guess", to: "main#game"


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:

  Researched answer:
  The HTML | action Attribute is used to specify where the formdata is to be sent to the server after submission of the form. It can be used in the <form> element.
  The method attribute specifies the HTTP method (GET or POST) to be used when submitting the form data


7. Name two rails generator commands and what files they create:

  Your answer:
  rails generate model Model first_name:string last_name:string 
  This will generate a model for the application with the specified fields
  
  rails generate controller Controller
  This will generate a controlled for the model that was specified

  Researched answer:
  rails g model user email
  This command will generate user model with email field type of string, migration which creates users table, test for model and factory (if you have it).
  
  rails generate controller controller_name
  Generates the view files, test files, and the controller files needed for the newly created controller.


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1.The :on option lets you specify when the validation should happen. 
  The default behavior for all the built-in validation helpers is to be run on save (both when you're creating a new record and when you're updating it). 
  If you want to change it, you can use on: :create to run the validation only when a new record is created or on: :update to run the validation only when a record is updated.

2.If you set the :autosave option to true, Rails will save any loaded association members and destroy members that are marked for destruction whenever you save the parent object. 
  Setting :autosave to false is not the same as not setting the :autosave option. If the :autosave option is not present, then new associated objects will be saved, but updated associated objects will not be saved.

3.Controls what happens to the associated objects when their owner is destroyed:

  :destroy causes all the associated objects to also be destroyed
  :delete_all causes all the associated objects to be deleted directly from the database (so callbacks will not execute)
  :nullify causes the foreign key to be set to NULL. Polymorphic type column is also nullified on polymorphic associations. Callbacks are not executed.
  :restrict_with_exception causes an ActiveRecord::DeleteRestrictionError exception to be raised if there are any associated records
  :restrict_with_error causes an error to be added to the owner if there are any associated objects

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
  Session
    A session creates a file in a temporary directory on the server where registered session variables and their values are stored. This data will be available to all pages on the site during that visit.
    A session ends when the user closes the browser or after leaving the site, the server will terminate the session after a predetermined period of time, commonly 30 minutes duration.
  
  Cookies
    Cookies are text files stored on the client computer and they are kept of use tracking purpose. 
    Server script sends a set of cookies to the browser. For example name, age, or identification number etc. The browser stores this information on a local machine for future use.
    When next time browser sends any request to web server then it sends those cookies information to the server and server uses that information to identify the user.