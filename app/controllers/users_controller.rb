class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all

    render component: 'UsersList', props: { emails: @users.map(&:email) }
  end
end
