class Admin::MembersController < Admin::BaseController
  
  def index
    @members = Member.find(:all)
  end

  def new
    @members = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Member created successfully"
      redirect_to admin_members_path
    else
      render :new
    end
  end
  
  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(params[:member])
      flash[:notice] = "Member saved successfully"
      redirect_to admin_members_path
    else
      render :new
    end
  end
  

  def destroy
    @member = Member.find(params[:id])
   
    if @member.destroy
      flash[:notice] = "Member deleted successfully"
      redirect_to admin_members_path
    end
    
  end
end
