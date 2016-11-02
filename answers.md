# Q0: Why is this error being thrown?
We did not define the pokemon model yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They appear when you refresh the page, and they are all starters+pikachu

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
initiates a patch request to the capture_path route specified in routes.db and passes the pokemon as the id parameter

# Question 3: What would you name your own Pokemon?
Jason

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect_to "/trainers/"+current_trainer.id.to_s, it needed the id of the trainer to dispay the correct page

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It renders the error message in the Pokemon model for the invalid pokemon just created and the application.html.erb shows it when it gets to <%= render 'layouts/messages' %>

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
