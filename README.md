# Sparta NASA API WebApp

## Main

This project had the purpose of building a WebApp using Sinatra, consuming data from NASA NeoWS API and test the app in the end.

Bellow there's the provided description of the Project:


>*The Xmas SDET Project*

>*API* - https://api.nasa.gov/api.html#neows-swagger

>Your project over the Christmas break is to refresh all of your skills that you have learnt since starting at Sparta. You will need to create a website in Sinatra (ERB) to call the NASA NeoWs - (Near Earth Object Web Service)

>This can be done on a JS timer event or merely a button to refresh after the initial site visit - It can be hosted on github pages or Heroku.

>We would expect it to be fully automated Unit, API and front end tested as part of the product.

>*Note* - You will need to look into what the API can provide to build an interesting site

>*Note* - The main focus of this project is to show off your SDET skills and what you can do

### How to run this Project

Throughout this project some environment set up had to be done to make sure the project runs properly.
That involved requiring some gems that can be found in the Gemfile on the root of the project.

To run this project you first will need to create a database and then take the following steps in your console:

- Install PostgreSQL
  - https://www.postgresql.org/download/
- If you don't have Homebrew on your machine, please see:
  - https://brew.sh/
- Make sure after installed, you have PostgreSQL running

```
brew install postgresql
git clone git@github.com:coding-sue-true/sparta-nasa_api-webapp.git
cd sparta-nasa_api-webapp

psql   
//(this will get you into the postgresql console)

CREATE DATABASE articles;
\q (press enter)
```
The database is now created, if you open your PostgreSQL you'll see an 'articles' database.

The next step will make the seed.sql file run

Go back to your console:

```
psql -d articles -f seed.sql
bundle install
rackup
```

After this, you'll be able to access the project by going to Google Chrome and type:
```
localhost:9292
```
Now you can navigate through the App!

(press Ctrl+C to exit the server)

#### How to test the app
Please note that you need to have the localhost up and running for the tests to pass.
Open a new window in your console:

##### Unit and Integration Testing

In your console, presuming you're inside the project folder:

```
cd testing/unit_and_integration_testing
rspec
```

A script will be running with the tests.

##### UI Testing

In your console, presuming you're inside the project folder:

```
cd testing/ui_testing
cucumber
```

A script will be running with the tests.

A report of this tests can be found in
```
testing/ui_testing/features/reports/test.html
```

##### Performance Testing

__Business Requirements__
- 100 users can access the website at the same time
  - Use case:
    - User access the required page


- Users can use the information provided in the pages as many times as they want
  - Use case:
    - User access the required page _n_ times
    

- I can have a lot of users on the page at the same time
  - Use case:
    - \>1000 users access the required page

__Homepage - Get '/'__

- Cannot have more than 1000 requests in 1h
- When there's more than 20 users accessing the homepage in 1s, it starts reducing its performance in terms of loading time
- When there's over 1000 users at the same time in the page during 1min, the performance starts to slow down
- Ideal performance of this page is with a maximum of 15users

__Asteroids - Get '/asteroids'__

- Cannot have more than 1000 requests in 1h
- When there's more than 20 users accessing the homepage in 1s, it starts reducing its performance in terms of loading time
- When there's over 1000 users at the same time in the page during 1min, the performance starts to slow down
- Ideal performance of this page is with a maximum of 15users


__Articles - Get '/articles'__

- When there's more than 20 users accessing the homepage in 1s, it starts reducing its performance in terms of loading time
- When there's over 1000 users at the same time in the page during 1min, the performance starts to slow down

![articles](/testing/images/articlessummary1.png)


#### Resources
- http://sinatrarb.com/intro.html
- https://www.tutorialspoint.com/postgresql/postgresql_create_table.htm
- https://cucumber.io/docs/reference/ruby
- https://github.com/cucumber/cucumber/wiki/A-Table-Of-Content
- http://www.rubydoc.info/github/cucumber/cucumber-ruby/
- https://github.com/rspec/rspec
- https://rubygems.org
- https://www.ruby-lang.org/en/documentation/
- https://github.com/teamcapybara/capybara
- http://www.rubydoc.info/github/jnicklas/capybara
- https://github.com/jnunemaker/httparty
