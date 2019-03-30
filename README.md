# Laugh Tracks

This is a student project from the Turing School of Software & Design as part of the Module 2 backend engineering curriculum.  The purpose of this project was to build an application with Sinatra that allows users to browse comedians and comedian specials.

It tested my ability to setup a database with one-to-many relationships and implement CRUD functionality. The project was completed utilizing test-driven development and organized with a MVC structure.

- View it live [here](Add Heroku Link)  
- View the original assignment [here](https://github.com/turingschool-projects/LaughTracks)


## Built With

* [Sinatra 2.0](http://sinatrarb.com/) - Web Framework
* [PostgreSQL](https://postgresapp.com/) - Database Management System


### Installing

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

- From your terminal, clone the repo: ```git clone git@github.com:milevy1/LaughTracks.git```
- If you do not have PostgreSQL, follow the steps to setup PostgreSQL [here](https://postgresapp.com/)
- Move to the new project directory: ```cd LaughTracks```
- Install required gems by running: ```bundle install```
- Seed the application with data by running: ```rake db:{drop,create,migrate,seed}```
- Start up your local Sinatra server by running: ```shotgun```
- View the application in your browser ```http://localhost:9393/comedians```


### Testing

RSpec was used for testing with gems Capybara and Shoulda-matchers.  Test coverage was tracked with SimpleCov.

- To run tests, from the root directory, run: ```rspec```


### Break down of tests

Tests in the spec/features folder test features simulating user interaction with the application and then expecting content on the page within specific CSS selectors.

Tests in the spec/models folder test the object models setup in the database.  They contain validations for table attributes, table relationships, and also methods built with ActiveRecord to interact with the database.
