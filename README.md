# README

Instructions:
* run bundle install
* run rake db:seed
* run rails s
* go to https://localhost:3000

Note:

If you try to run rails s and enocunter an error regarding yarn or webpacker, make sure yarn is installed by running 

yarn --version. 

If yarn appears to be installed, check that all packages are up to date by running 

yarn install --check-files

If yarn is not installed, visit https://yarnpkg.com/en/docs/install

Once yarn is installed and up-to-date, run

rails webpacker:install

Now you can sucessfully run rails s!


~~~~~~~~~~~~~~~~~~~
Requirements for the Mini-Project:

Objectives

* Build a small Rails project
* Be able to create basic models, migrations, controllers, and views

Instructions

For this mini project, you'll create a small Rails app. The topic is open-ended. You could build a small recipe app, or a todo list, or even a small blogging platform.

Requirements

[x] Have at least 3 distinct models
[x] There should be at least one many-to-many relationship
[x] Hit at least 1 API
[x] Create seed data

Ultra Bonus

* Write model tests
* Practice refactoring
* Make it pretty with Bootstrap or Materialize (look into the Rails Asset Pipeline (Links to an external site.))
~~~~~~~~~~~~~~~~~~~
