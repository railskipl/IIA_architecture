class Admin::DashboardController < Admin::BaseController
  
  before_filter :authenticate_admin!, :except => []
  
end
