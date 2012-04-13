class Emailer < ActionMailer::Base
 def contact_email(contact)
 	@contact = contact
        setup_email(contact)
        @subject    += ""

      end

      protected
        def setup_email(contact)
          @recipients  = "anupwin@gmail.com"
          @from        = "#{contact.email}"
          @subject     = "IIA Nagpur Center - Contact Us: "
          @sent_on     = Time.now
          @content_type = "text/html"
          @body[:contact] = contact

       end
  
end
