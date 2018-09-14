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
 
 *** Clone the code source
 
### bundle install

### rake db:migrate


*** Active Record Associations

### rails generate migration TableCategories


### db/migrate/*_table_categories.rb
class TableCategories < ActiveRecord::Migration
  def change
    create_table :categories
    add_column :categories, :name, :string
  end
end

### app/models/category.rb
class Category < ActiveRecord::Base
end

### rake db:migrate



*** generate id relation
### rails generate migration AddCategoryIdToBooks

### db/migrate/*_add_category_id_to_books.rb
class AddCategoryIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_id
  end
end


Category.find(book.category_id)

# app/models/book.rb
class Book < ActiveRecord::Base
  belongs_to :category
end

# app/models/category.rb
class Category < ActiveRecord::Base
  has_many :books
end

book = Book.last
book.category

category = Category.find(1)
category.books

Book.last.category
Category.find(1).books