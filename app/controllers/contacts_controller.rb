class ContactsController < ApplicationController
	layout 'news'
	
	def contact
		if request.post? and params[:contact]
    	      if contact = Contact.new(params[:contact])

    	        contact.name = "#{params[:contact][:name]}"
    	        contact.email = "#{params[:contact][:email]}"
    	        contact.phone = "#{params[:contact][:phone]}"
    	        contact.message = "#{params[:contact][:message]}"
    	        
    	        if contact.save

			Emailer.contact_email(contact).deliver
    	        

              flash[:notice] = "Thank you for sending a mail."
    	        redirect_to("/home")
  	        else
  	          render :contact
	          end

    	      end

    	   else
    	     @title = "contacts"
  	     end
  	     
  	     @meta_title = "Indian Institute Architects,Nagpur Center - Contact Us"
	end
end
