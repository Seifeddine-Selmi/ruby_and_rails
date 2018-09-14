class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def create

    # le create fait la même chose qu’un new et save.
    Book.create title: params[:title]
    redirect_to "/books" 
    
     
#      book = Book.new
#      book.title = params[:title]
#      book.save
#      
#      if book.save
#        redirect_to "/books" 
#      end
      
   end
   
  def show
    @book = Book.find(params[:id])
  end
  
  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end
  
  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
  
  def delete  
    
    @books = Book.all

    @books.each do |book| 
      book.destroy
    end 
  end
end
