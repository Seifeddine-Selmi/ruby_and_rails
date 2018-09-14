# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Create project ruby and rails


### rails new rubyrails -d mysql
###  rake db:create 

*** cd rubyrails

###  rails server
*** http://localhost:3000

*** Generate Controller
### rails g controller books index

http://localhost:3000/books/index


*** Create table database
### rails generate migration TableBooks

 class TableBooks < ActiveRecord::Migration
	  def change
	    create_table :books
	    add_column :books, :title, :string
	  end
end

 ### rake db:migrate
