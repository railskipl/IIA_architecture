class Admin::BooksController < Admin::BaseController
  
  def index
     @books = Book.find(:all)
  end
  
  def new
    @book = Book.new
  end
  
  def create
     @book = Book.new(params[:book])
     if @book.save
       flash[:notice] = "Architect Year Book created successfully"
       redirect_to admin_books_path
     else
       render :new
     end
   end
   
   def show
     @book = Book.find(params[:id], :include => :yralbums)
   end

   def edit
     @book = Book.find(params[:id])
   end

   def update
     @book = Book.find(params[:id])
     if @book.update_attributes(params[:book])
       flash[:notice] = "Architect Year Book saved successfully"
       redirect_to admin_books_path
     else
       render :new
     end
   end


   def destroy
     @book = Book.find(params[:id])

     if @book.destroy
       flash[:notice] = "Architect Year Book deleted successfully"
       redirect_to admin_books_path
     end

   end
end
