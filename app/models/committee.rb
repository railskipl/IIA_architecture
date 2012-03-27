class Committee < ActiveRecord::Base
 attr_accessible :name, :phone_no, :email, :designation, :brief_info,:committee
  
 mount_uploader :committee, CommitteeUploader 
 
 # If we don't want to save the original image uncomment the following code 
 #after_save :destroy_original

# private

# def destroy_original
 #  File.unlink(self.committee.path)
 #end
  
end
