class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.	
  protect_from_forgery with: :exception
  private
  def configure_permitted_parameters
 	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :username, :password, :password_confirmation, :bio, :address) }
  end
end

<!--   <% if current_user %>
    <p>Are you an artist? Upload your art <%= link_to "here", "/pieces/new" %>.</p>
  <% end %>

  <% if current_user %>
    <p>You're signed in as <%= current_user.username %>.</p>
    <p><%= link_to "Profile", "/users/#{current_user.id}" %></p>
    <p><%= link_to "Logout", destroy_user_session_path, method: :delete %></p>
  <% else %>
    
  <% end %>-->