class Committee < ActiveRecord::Base
 attr_accessible :name, :phone_no, :email, :designation, :brief_info,:committee
  
 mount_uploader :committee, CommitteeUploader 
  
end
