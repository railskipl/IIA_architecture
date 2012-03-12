class Admin::CommitteesController < Admin::BaseController
  
    def index
      @committees = Committee.find(:all)
    end

    def new
      @committees = Committee.new
    end

    def create
      @committee = Committee.new(params[:committee])
      if @committee.save
        flash[:notice] = "Committees created successfully"
        redirect_to admin_committees_path
      else
        render :new
      end
    end
    
    def edit
      @committee = Committee.find(params[:id])
    end

    def update
      @committee = Committee.find(params[:id])
      if @committee.update_attributes(params[:committee])
        flash[:notice] = "Committees saved successfully"
        redirect_to admin_committees_path
      else
        render :new
      end
    end
    

    def destroy
      @committee = Committee.find(params[:id])
     
      if @committee.destroy
        flash[:notice] = "Committees deleted successfully"
        redirect_to admin_committees_path
      end
      
    end
end
