class EntriesController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy]

  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      flash[:success] = 'Post created!'
      redirect_to root_url
    else
      render 'commons/home'
    end
  end

  def destroy
  end

  def entry_params
    params.require(:entry).permit(:content)
  end

  private :entry_params
end
