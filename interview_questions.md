# Interview Questions

As the bootcamp was deliberately light on the theory and definitions, we
have compiled some of the interview questions related to Web Development
and Rails, grouped by category.

> The below questions are a sample representative of what you _might_ be
> asked in a Web Development-based interview and you can be asked
> questions outside of these.

## Web Development

- What is meant by frontend and backend?
  ```
  The part of a website that user interacts with directly is termed as front end. It is also referred to as the 'client side' of the application.
  Backend is 'server side' of the website. It stores and arranges data, and also makes sure everything on the client-side of the website works fine. It is the part of the website that you cannot see and interact with.
  ```

- What are web frameworks?
  ```
  A web framework or web application framework is a software framework that is designed to support the development of web applications including web services, web resources, and web APIs.
  ```

- What are some common frontend web frameworks?
  ```
  Frontend or CSS Frameworks: React, Angular, Vue, etc.
  ```

- What is meant by responsive web design?
  ```
  A responsive website has a fluid and flexible layout which adjusts according to screen size. Basically, your website will look great and work well on a laptop, a tablet, and a mobile phone's browser.
  ```

- What are some common backend web frameworks?
  ```
  Backend Frameworks : Laravel Framework, Flask Framework, Django, etc.
  ```

- Explain MVC architecture and its benefits?
  ```
  The Model-View-Controller (MVC) is an architectural pattern that separates an application into three main logical components: the model, the view, and the controller.

  Benefits :-
  - Easier to Debug as we have multiple levels properly written in the application.
  - The Modification Never Affects The Entire Model.
  - Faster Web Application Development Process
  ```

- What are common ways of storing user information?
  ```
  Common ways of storing user information :-
  - Data Storage on the Cloud
  - Storing Your Data Locally
  - Storing Data in Printed Format
  ```

- Explain the request-response cycle
  ```
  The HTTP request communicates which resource a client wants to interact with and how the client wants to interact with it.
  An HTTP response is what is sent by a server to a client in response to an HTTP request. The response contains a status code and if the request was successful, the requested resource.

  Request-Response Cycle in Rails :-
  - When a user enters the URL, the browser makes a request for that URL.
  - The request hits the Rails router (config/routes.rb). The router maps the URL to the correct controller and action to handle the request.
  - The action receives the request and passes it on to the view.
  - The view renders the page as HTML.
  - The controller sends the HTML back to the browser. 
  - The page loads and the user sees it. 
  ```

- What are HTML, CSS and JavaScript used for?
  ```
  HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript. 
  CSS is used to control presentation, formatting and layout. 
  JavaScript is used to control the behavior of different elements.
  ```

- What is the recommended way to include JavaScript and CSS in your
  HTML files?
  ```
  External Javascript :-
  <script src="script.js"></script>

  External CSS :-
  <link rel="stylesheet" href="styles.css">
  ```

- What is jQuery?
  ```
  jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.
  ```

- What are some different ways to improve page load times?
  ```
  - Use Ajax
  - Avoid Inline CSS and Javascript
  - Use Caching Techniques
  - DRY (Don't Repeat Yourself)
  ```

- What are cookies and sessions? How are they different?
  ```
  Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server.
  ```

- How are `http` and `https` different?
  ```
  HTTP is unsecured while HTTPS is secured. 
  HTTP sends data over port 80 while HTTPS uses port 443. 
  HTTP operates at application layer, while HTTPS operates at transport layer. 
  No encryption in HTTP, with HTTPS the data is encrypted before sending
  ```

- What is meant by API? What are some advantages of using APIs?
  ```
  API or Application Programming Interface is a software intermediary that allows two applications to talk to each other.

  Advantages :-
  - Automation of Computer Abilities
  - Increased Scope of Data
  - Efficiency
  - Integrated User Experience
  - Easy Adaptation to Updates
  ```

- What is meant by REST?
  ```
  REpresentational State Transfer (REST) is a software architectural style that defines a set of constraints to be used for creating Web services. Web services that conform to the REST architectural style, called RESTful Web services. It allows requesting systems to access and manipulate web resources by using a uniform and predefined set of rules.
  ```


## Git

- What is Git?
  ```
  Git is a version control system for tracking changes in computer files and coordinating work on those files among multiple people. It is primarily used for source code management in software development.
  ```

- What is a repository?
  ```
  In software development, a repository is a central file storage location. It is used by version control systems to store multiple versions of files. 
  While a repository can be configured on a local machine for a single user, it is often stored on a server, which can be accessed by multiple users
  ```

- How to create a local copy of a repository from Github?
  ```
  We can clone the Github Repository in Local System using git.

  In terminal or git bash :
  git clone 'HTTPS URL OF THE REPOSITORY'
  ```

- What is a branch?
  ```
  A git branch is an independent line of development taken from the same source code.
  ```

- What is a commit?
  ```
  Commits are snapshots of your entire repository at specific times. The commit object contains the directory tree object hash, parent commit hash, author, committer, date and message.
  ```

- What is a commit message and why are they useful?
  ```
  Commit messages are used to explain the changes in the commit. They are important means of communication between team members and for the lifecycle of the teams and projects since they include the context on which they were created.
  ```

- How to write a commit?
  ```
  In the terminal or git bash :-
  git commit -m "COMMIT MESSAGE"
  ```

- How to add my changes to the `main` branch?
  ```
  If you are working on main branch, then you can directly commit the changes.

  If you are working on different branch, then you can first switch the branch to `main` and then follow same procedure.
  
  To switch the branch to main, in terminal or git bash :-
  git checkout main
  ```

- What is a remote?
  ```
  Remotes are basically URLs to other copies of your repository. 
  When you clone another repository, Git automatically creates a remote named "origin" and points to it.
  ```

- What is a fork?
  ```
  When you fork a repository, you create a copy of the original repository (upstream repository) on your GitHub account.
  ```

- How to update my local copy with the changes on Github?
  ```
  Using git pull command by setting up a remote, we can update the local copy.

  In terminal or git bash :-
  git pull upstream BRANCH_NAME
  ```

- How to send my changes to Github?
  ```
  Using git push command by setting up a remote, we can update the github repo.

  In terminal or git bash :-
  git push origin BRANCH_NAME
  ```

- What are merge conflicts?
  ```
  Merge conflicts occur when competing changes are made to the same line of a file, or when one person edits a file and another person deletes the same file.
  ```

- How to fix a merge conflict?
  ```
  We can use the conflict editor on GitHub to resolve competing line change merge conflicts between branches that are part of a pull request.
  ```


## Ruby

- What are some differences between compiled and interpreted languages?
  ```
  Compiled Language :-
  - It is executed by Target Machine Compilers
  - It can be optimized by compilers
  - Faster to run
  - Compilation Errors prevent the code from run


  Interpreted Language :-
  - It is executed by Interpreters
  - It can't be optimized by interpreters
  - Slower in reference to compiled language
  - All the debugging occurs at run-time only
  ```

- Is Ruby a loosely typed language?
  ```
  Loosely typed language means when you don’t have to explicitly specify types of variables and objects.
  Strongly typed language means an object's type is checked before an operation.

  As you can create a variable without mentioning its type and also the type is checked while performing an operation, Ruby is more of a Dynamically Typed Language.  
  ```

- What is a Gem?
  ```
  A gem is a module/Library of Ruby Programming Language that you can install and use in your project on your server.
  ```

- What is a Gemfile?
  ```
  A Gemfile is a file we create which is used for describing gem dependencies for Ruby programs. It is evaluated as a Ruby Code only.
  ```

- What is Bundler?
  ```
  Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.
  ```

- What is RVM?
  ```
  RVM is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.
  ```

- How to install libraries for a Ruby project?
  ```
  To search a gem :-
  gem search -r KEYWORD

  To install a gem :-
  gem install GEM_NAME
  ```

- How to define functions?
  ```
  Without Variables :-
  def FUNCTION_NAME
    # Code
  end

  With Variables :-
  def FUNCTION_NAME(VARIABLE_NAME=DEFAULT_VALUE)
    # Code
  end
  ```

- What are predicate functions?
  ```
  A method that returns true or false is called a “predicate method”. 
  In Ruby, there is a naming convention where predicate methods end with a question mark.
  ```

- What are safe and unsafe functions?
  ```
  The functions ending with ! (save!, update! and others) are called unsafe functions and raise an exception if the record is not valid.

  On the other hand, functions not ending with ! are called safe functions and return true/false depending whether the record is valid.
  ```

- What are instance and class variables?
  ```
  Class variables are shared between a class and all its subclasses, while Instance variables only belong to one specific class.
  ```

- What are instance and class functions?
  ```
  A class method provides functionality to a class itself, while an instance method provides functionality to one instance of a class.
  We cannot call an instance method on the class itself, and we cannot directly call a class method on an instance.
  ```

- What are attribute readers, writers and accessors?
  ```
  'attr_accessor' allows instance variables to be accessed outside the methods.

  'attr_accessor' creates both the reader & writer methods.
  'attr_reader' creates only the reader.
  'attr_writer' creates only the writer.
  ```

- What are strings and symbols?
  ```
  Strings are any text written between quotation marks ("string”), while a symbol is text that begins with a colon (:symbol)

  We use Symbols when the value will remain constant. For example, hash keys, while we use Strings when the value or you want to change the value or use a string method on it
  ```

- What is a class? How to define a class?
  ```
  A Class is a blueprint from which individual distinct objects can be created.

  To define a class in Ruby :-
  class ClassName
  end

  To create a object of this class :-
  object = ClassName.new
  ```

- What are some different ways to iterate over an array?
  ```
  Different ways to iterate over an array :-
  1. While Loop
    while EXPRESSION
      # Some Code
    end

  2. For Loop
    for element in Array_name
      # Some Code
    end

  3. Each Loop
    Array_name.each |element|
      # Some Code
    end
  ```

- How to create a hash variable and iterate over it?
  ```
  Creating a hash variable :-
  hash = {
    key1 => value1,
    key2 => value2
  }

  Iterating over hash :-
  hash.each do |key, value|
    # Some Code
  end
  ```

- What are some differences between `nil` and `false`?
  ```
  nil means no data value but memory is still allocated for null. 
  false is a boolean, it is simply not true.
  ```

- How to raise and handle exceptions?
  ```
  To raise an Exception :-
  raise Exception.new "This is an exception"

  To handle a Exception :-
  begin
    # process, may raise an exception
  rescue
      # error handler
  else
      # executes when no error
  ensure
      # always executed
  end
  ```

- What are naming conventions for variables, functions and classes?
  ```
  Naming Convention for Variables :-
  Variables are named where all letters are lowercase and words are separated by underscores. e.g. order_amount, etc.

  Naming Convention for Functions :-
  Functions are named where all letters are lowercase and words are separated by underscores. e.g. add_array, etc.

  Naming Convention for Classes :-
  Classes and modules use MixedCase and have no underscores, each word starts with a uppercase letter. e.g. InvoiceItem, etc.
  ```


## Models

- What is the role of Model layer in MVC architecture?
  ```
  Model layer is responsible for retrieving data and converting it into meaningful concepts for your application. This includes processing, validating, associating or other tasks related to handling data
  ```

- What are relational databases? Mention some examples.
  ```
  A relational database is a type of database that stores and provides access to data points that are related to one another. Eg. Oracle, MySQL, etc.
  ```

- What are non-relational databases? Mention some examples.
  ```
  A Non-relational database provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases. Eg. MongoDB, Cassandra, etc.
  ```

- Explain the different use cases of relational and non-relational
  databases.
  ```
  All relational databases can be used to manage transaction-oriented applications (OLTP), and most non-relational databases that are in the categories Document stores and Column stores can also be used for OLTP.

  Relational databases usually work with structured data, while non-relational databases usually work with semi-structured data (i.e. XML, JSON).
  ```

- What is SQL?
  ```
  SQL stands for Structured Query Language. SQL lets you access and manipulate databases.
  ```

- What is Object Relation Mapper? What are its advantages?
  ```
  ORM is the middle person between a relational database management system and our preferred object-oriented programming language.

  Advantages :-
  - It abstracts away the database system so that switching from one database to another is easy.
  - Depending on the ORM you get a lot of advanced features out of the box, such as support for transactions, connection pooling, migrations, seeds, streams, and all sorts of other goodies.
  ```

- What are migrations in Rails?
  ```
  A Rails migration is a tool for changing an application's database schema.
  ```

- What is `db/schema.rb` in Rails?
  ```
  'db/schema.rb' is for following purposes :-
  - It documents the final current state of the database schema.
  - It is used by the tests to populate the database schema. As such a rake db:schema:dump is often run as part of the rake test:prepare run. The purpose is that the schema of the test database exactly matches the current development database.
  ```

- Using SQL, How can we create and modify tables?
  ```
  Create Table using SQL :-
  CREATE TABLE table_name(column_name datatype);

  Modify table using SQL :-
  ALTER TABLE table_name MODIFY COLUMN column_name datatype;
  ```

- What are some datatypes stored by SQL?
  ```
  - Numeric
  - Data and Time
  - Character and String
  - Varchar
  ```

- Using migration, how can we create and modify tables?
  ```
  Creating a table :-
  rails generate migration TableName column_name:datatype

  Modifying a table :-
  rails g migration change_column_to_table

  After that, apply the changes to database :-
  rails db:migrate  
  ```

- Can a migration be applied many times?
  ```
  To run a single migration multiple times :-
  rake db:migrate:redo VERSION=VERSION_NUMBER
  ```

- How does Rails keep track of migrations that it has already applied?
  ```
  Rails creates a table in your database called schema_migrations to keep track of which migrations have run. It contains a column 'version' which keeps the version number of the migration.
  ```

- How to "undo" the effect of running a migration?
  ```
  We can rollback to undo the effect of running a migration :-
  rails db:rollback
  ```

- How to generate models in Rails?
  ```
  rails generate model model_name
  ```

- What is a primary key?
  ```
  The column which is used to uniquely identify a record in a table.
  ```

- What is a foreign key?
  ```
  A foreign key is a key used to link two tables together. A foreign key is a field (or collection of fields) in one table that refers to the primary key in another table.
  ```

- How to create records using SQL and Rails?
  ```
  Creating Record using SQL :-
  Insert into table_name(column_names) values (column_values);

  Creating Record using Rails :-
  table_name.create(
    column_name: column_value
  )
  ```

- How to read records using SQL and Rails?
  ```
  Read Record using SQL :-
  Select * from table_name where condition;

  Read Record using Rails :-
  table_name.where(condition)
  ```

- What are some differences between `Employee.find(1)`, `Employee.find_by(id: 1)` and `Employee.where(id: 1)`?
  ```
  `Employee.find(1)` :-
  Return the Employees with id=1, Raise Exceptions when not found

  `Employee.find_by(id: 1)` :-
  Return the first Employee with id=1

  `Employee.where(id: 1)` :-
  Return all the Employees with id=1
  ```

- How to update records using SQL and Rails?
  ```
  Update records using SQL :-
  UPDATE table_name SET column1 = value1 WHERE condition;

  Update records using Rails :-
  table_name.where(condition).update(column1: value1)
  ```

- How to delete records using SQL and Rails?
  ```
  Delete records using SQL :-
  DELETE FROM table_name WHERE condition;

  Update records using Rails :-
  table_name.where(condition).delete
  ```

- What is the "N + 1" queries problem and how to solve it?
  ```
  The N+1 query problem happens when the data access framework executed N additional SQL statements to fetch the same data that could have been retrieved when executing the primary SQL query.

  To solve it, there is a Active Records Includes Method. Eg.
  @articles = Article.includes(:comments).limit(5)
  ```

- What are database indices?
  ```
  Indexes are used to quickly locate data without having to search every row in a database table every time a database table is accessed.
  ```

- What is meant by an association between two tables?
  ```
  In Rails, an association is a relationship between two Active Record models. eg. has_many, has_one, etc.
  ```

- What are the different types of associations?
  ```
  Rails supports six types of associations :-
  - belongs_to
  - has_one
  - has_many
  - has_many :through
  - has_one :through
  - has_and_belongs_to_many
  ```

- Using Rails, how can we validate user input before updating database?
  ```
  To validate User input, we can use ActiveRecord Validations.
  eg.alidates_length_of :password :in => 8.16
  ```

- How to write a custom validation function in Rails?
  ```
  eg.
  class User < ApplicationRecord
    validate :custom_validation
    private def custom_validation
      if ! (password.length > 8)
        self.errors[:base] << "Custom error message"
      end
    end
  end
  ```


## Controllers

- What is the role of Controller layer in MVC architecture?
  ```
  MVC Controllers are responsible for controlling the flow of the application execution. 
  When you make a request to MVC application, a controller is responsible for returning the response to that request.
  ```

- What is meant by CRUD?
  ```
  CRUD :
  C - Create
  R - Read
  U - Update
  D - Delete
  ```

- What is meant by a RESTful API?
  ```
  A REST API (also known as RESTful API) is an application programming interface that conforms to the constraints of REST architectural style and allows for interaction with RESTful web services. 
  ```

- What are some alternatives to REST?
  ```
  - FALCOR
  - gRPC
  - Apache
  - graphQL
  ```

- What is routing?
  ```
  The routing module provides URL rewriting in native Ruby. It's a way to redirect incoming requests to controllers and actions. Routing works with any web server. 
  Routes are defined in app/config/routes.rb.
  ```

- What are actions?
  ```
  The "actions" (instance methods) work on passed data ( params ) to create objects that can either be passed to the model, or used inside other methods.
  ```

- How to define a resource in Rails router file?
  ```
  Resource routing allows you to quickly declare all of the common routes for a given resourceful controller.
  eg. resources :articles
  ```

- How does Rails identify appropriate controller, action and view file?
  ```
  When your application receives a request, the routing will determine which controller and action to run, then Rails creates an instance of that controller and runs the method with the same name as the action.

  The specified action is used to determine which view to render, but Rails does not run any of the code for that action in the controller. Any instance variables that you require in the view must be set up in the current action before calling render.
  ```

- What is the different between `render` and `redirect_to`?
  ```
  Redirect: Redirect is a method that is used to issue the error message in case the page is not issued or found to the browser. It tells browser to process and issue a new request.
  Render: Render is a method used to make the content. Render only works when the controller is being set up properly with the variables that require to be rendered.
  
  render will tell Rails what view it should use (with the same parameters you may have already sent) but redirect_to sends a new request to the browser.
  ```

- What are flash messages?
  ```
  A flash message is a way to communicate information with the users of your Rails application so they can know what happens as a result of their actions.
  ```

- How to allow certain parameters from the user's response?
  ```
  Eg.
  if user.role == 'admin'
    attr_accessor #All the params
  else
    attr_accessor #All the other params except the ones you want to exclude
  end
  ```

- What are some differences between Authentication and Authorization?
  ```
  Authentication is a confirmation of user identity, while authorization determines whether you can access a particular resource.
  ```

- What does `rails generate scaffold ...` do?
  ```
  Scaffolding is a quick way to produce some major pieces of an application. For auto generating a set of models, views and controllers for a new resource in a single operation, scaffolding is used. application database may be used.
  ```

- What are `before_action` in Rails?
  ```
  before_action call method before the actions which we declare. 

  eg. before_action :set_time [:show, :update]
  set_time is a method which will always call before show and update.
  ```

- How are ordinary variables (`x`) and instance variables (`@x`)
  different in an action?
  ```
  A normal variable has scope only within the current context; an instance variable has scope throughout one instance of a class.
  ```

- How to respond to different request types (HTML, JSON, AJAX, PDF
  and others) differently in a controller?
  ```
  Rails can present data in multiple ways, with different View file formats using a respond_to block. These often require additional third-party gems and libraries.
  Eg.
  respond_to do |format|
    format.html
    format.pdf do
        render pdf: "Article No. #{@article.id}"
    end
  end
  ```

- How to transfer a file to user in Rails?
  ```
  To download files in Rails, we  +- use 
  send_file :-
  def download(file)
    send_file file.path, :disposition => 'attachment'
  end
  ```


## Views

- What is the role of views in MVC architecture?
  ```
  A view is used to display data using the model class object. A controller can render one or more views.
  ```

- What is a layout?
  ```
  In Rails, layouts are pieces that fit together (for example header, footer, menus, etc) to make a complete view.
  ```

- What is Embedded Ruby?
  ```
  ERB (Embedded RuBy) is a feature of Ruby that enables you to conveniently generate any kind of text, in any quantity, from templates. The templates themselves combine plain text with Ruby code for variable substitution and flow control, which makes them easy to write and maintain.
  ```

- What are some differences between `<%` and `<%=` tags?
  ```
  '<%' : Not output the Code in the View, Used for Performing Ruby Functions
  '<%=' : Outputs the Code in the View, Used for displaying the Result of the Ruby Functions
  ```

- What are partials? How to pass local variables to a partial?
  ```
  With a partial, you can move the code for rendering a particular piece of a response to its own file.

  To pass local variables to a partial :-
  <%= render partial: "partial_name", locals: {name: value} %>
  ```

- What are `link_to` tags?
  ```
  'link_to' is used to create a link
  eg. <%= link_to "Home", root_path %>
  ```

- How to build a form in Rails?
  ```
  eg:
  <%= form_for(@user) do |f| %>
    <%= f.label :name %>
    <%= f.text_field :name %>
  <% end %>
  ```

- What is AJAX? How can we use AJAX in Rails?
  ```
  Ajax powered web page retrieves the web page from the server which is new or changed unlike other web-page where you have to refresh the page to get the latest information.

  To use Ajax in Rails :-
  Rails.ajax({
    url: "/users",
    type: "get",
    data: "",
    success: function(data) {},
    error: function(data) {}
  })
  ```

- How to implement pagination in Rails?
  ```
  We can use 'will_paginate' gem to implement pagination in rails.
  ```

- How to integrate common frontend libraries like Bootstrap and jQuery
  with Rails?
  ```
  We can mention the required libraries in the gemfile along with the proper version.
  Then run bundle install to install the gems.
  The gems will be integrated mostly else we may need to include yarn packages depending on the library
  ```

---

# Group IRIS - RubyOnRails Bootcamp 2021 Questions:

What is a website?
```
A website (also written as web site) is a collection of web pages and related content that is identified by a common domain name and published on at least one web server. 
```

What is a webpage?
```
A web page is a specific collection of information provided by a website and displayed to a user in a web browser.
It is a hypertext document available on World Wide Web.
```

What is a URL? 
```
A Uniform Resource Locator (URL, colloquially termed a web address) is a reference to a web resource that specifies its location on a computer network.
```

What does HTTP or HTTPS mean in the start of a URL? 
```
The Hypertext Transfer Protocol (HTTP) is an application layer protocol for distributed, collaborative, hypermedia information systems.
The 's' in HTTPs stands for secure, i.e. HTTPs is the secure version of Http.
```

What is HTML, CSS, JavaScript? 
```
HTML provides the basic structure of sites, which is enhanced and modified by other technologies like CSS and JavaScript. CSS is used to control presentation, formatting and layout. JavaScript is used to control the behavior of different elements.
```

Components of a website: Frontend and Backend?
```
The part of a website that user interacts with directly is termed as front end. It is also referred to as the ‘client side’ of the application.
Backend is server side of the website. It stores and arranges data, and also makes sure everything on the client-side of the website works fine. It is the part of the website that you cannot see and interact with.
```

What is a web server? 
```
A web server is server software, or a system of one or more computers dedicated to run the websites. The basic objective of the web server is to store, process and deliver web pages to the users. This intercommunication is done using Hypertext Transfer Protocol (HTTP).
```

How does the webpage google.com gets displayed on my browser( Chrome/Firefox) when I type google.com and press Enter? (complete journey) 
```
Steps :
1. You type google.com into the address bar of your browser.
2. The browser checks the cache for a DNS record to find the corresponding IP address of google.com. (DNS(Domain Name System) is a database that maintains the name of the website (URL) and the particular IP address it links to)
3. If the requested URL is not in the cache, ISP’s DNS server initiates a DNS query to find the IP address of the server that hosts google.com.
4. The browser initiates a TCP connection with the server. (TCP - Transimission Control Protocol is used for building a connection between browser and server that matches the IP address)
5. The browser sends an HTTP request (GET request) to the webserver.
6. The server handles the request and sends back a response.
7. The server sends out an HTTP response. (The response contains the web page you requested as well as the status code, compression type (Content-Encoding), how to cache the page (Cache-Control), any cookies to set, privacy information, etc.)
8. The browser displays the HTML content. (These static files are cached by the browser, so it doesn’t have to fetch them again the next time you visit the page.)
In the end, you’ll see google.com appearing on your browser.
```

What is localhost? 
```
The localhost is the default name describing the local computer address also known as the loopback address. It is used to access the network services that are running on the host via the loopback network interface.
```

What is a Request, Response, Resource? (related to Web development)
``` 
A HTTP request is a text string generated by the client and sent to the server containing the specifications of the resource the client is asking for. 
A resource is anything that can accessed via the web.
An HTTP response is what is sent by a server to a client in response to an HTTP request. These responses contain a status code and if the request was successful, the requested resource.
```

What is REST Architecture?
```
REpresentational State Transfer (REST) is a software architectural style that defines a set of constraints to be used for creating Web services. Web services that conform to the REST architectural style, called RESTful Web services. It allows requesting systems to access and manipulate web resources by using a uniform and predefined set of rules.
```

What do you mean by GET, POST, PUT etc.?
``` 
These are the HTTP methods that correspond to the CRUD Architecture:
C - Create - POST
R - Read - GET
U - Update - PUT
D - Delete - DELETE
GET is for data retrieval, POST is for creating data, PUT is for updating data and DELETE is for deleting data.
```

REST vs SOAP architecture? 
```
Points :
1. SOAP stands for Simple Object Access Protocol and REST stands for REpresentational State Transfer.
2. Since SOAP is a protocol, it follows a strict standard to allow communication between the client and the server whereas REST is an architectural style that doesn’t follow any strict standard but follows six constraints defined by Roy Fielding in 2000.
3. REST can use SOAP protocol but SOAP cannot use REST.
4. SOAP uses only XML whereas REST is not restricted to XML.
5. SOAP requires more bandwidth than REST.
6. Some of the applications require transaction ability which is accepted by SOAP whereas REST lacks in it.
7. On the basis of Security, SOAP has SSL( Secure Socket Layer) and WS-security whereas REST has SSL and HTTPS. Generally, SOAP is preferred over REST incase of security.
```

What are APIs? 
```
An application programming interface ('API') is a computing interface that defines interactions between multiple software intermediaries. It defines the kinds of calls or requests that can be made, how to make them, the data formats that should be used, the conventions to follow, etc.
```

What are HTTP status codes/response codes like 200, 302, 404?
```
Status codes are issued by a server in response to a client's request made to the server. The first digit of the status code defines the class of response (there are five classes defined by standard), while the last two digits do not have any classifying or categorization role.
200 OK - Standard response for successful HTTP requests.
302 Found (Previously "Moved temporarily") - Tells the client to look at (browse to) another URL.
404 Not Found - Requested Resource could not be found.
440 Login Time-out - The client's session has expired and must log in again.
```
