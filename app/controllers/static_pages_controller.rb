class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      puts "--------------Signed IN------------------"
      @user = User.find_by(params[:meta])
      puts "------------------#{@user[:meta_type]} #{@user[:email]}---------"

      if @user[:meta_type] != 'Contributor'
        redirect_to contributor_path(@user[:meta_id])
      elsif @user[:meta_type] != 'Organization'
        redirect_to organization_path(@user[:meta_id])
      end
    end
  end
end
