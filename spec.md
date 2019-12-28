# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
		Included sinatra which was executed using shotgun
		Included sinatra-active_record 
		Included sinatra-flash
		Included sinatra-redirect-with-flash

- [x] Use ActiveRecord for storing information in a database
		ActiveRecord was used to execute sql queries to the database and perform validations 					

- [x] Include more than one model class (e.g. User, Post, Category)
	    User and Comic Models

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
		A User has many Comics

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
		A Comic belongs to a user 

- [x] Include user accounts with unique login attribute (username or email)
		Used emails as the primary logon key 

- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [ ] Ensure that users can't modify content created by other users
- [ ] Include user input validations
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
