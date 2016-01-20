class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      if @user[:meta_type] == 'Contributor'
        redirect_to contributor_path(@user.meta.id)
      elsif @user[:meta_type] == 'Organization'
        redirect_to organization_path(@user.meta.id)
      end
    end
  end
end
