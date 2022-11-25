https://youtu.be/fmyvWz5TUWg?t=11194

For anyone having trouble with the Sign up process on Rails 7, go to config/initializers/devise.rb and add this line

config.navigational_formats = ['*/*', :html, :turbo_stream] , then migrate and restart the server.

fix for error at 1:58 trying to sign out. change "method: :delete" to "data: { turbo_method: :delete }"

And for those getting an error signing out replace the link_to line with this:
<%= button_to "Destroy friend", friend, form: { data: { turbo_confirm: "Are you sure?" } }, method: :delete, class:"btn btn-danger" %