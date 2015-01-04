class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with users
  end

private
  def users
    [user, user, user]
  end

  def user
    {:login => "hello_world_#{(1..1000).to_a.sample}"}
  end
end
