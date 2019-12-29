# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
		Include sinatra which is executed using shotgun
		Include sinatra-active_record 
		Include sinatra-flash
		Include sinatra-redirect-with-flash

- [x] Use ActiveRecord
		Use ActiveRecord for creating, storing and retrieving information in a database
		ActiveRecord is used to execute sql queries to the database and perform validations 					
- [x] Include more than one model class (e.g. User, Post, Category)
	    User and Comic Models were used for this project

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
		A User has many Comics

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
		A Comic belongs to a user 

- [x] Include user accounts with unique login attribute (username or email)
		Used email as the primary login key 

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying

- [x] Ensure that users can't modify content created by other users

- [x] Include user input validations
		Validates to make sure that user does not persist in database upon sign up
		Validates to make sure that comic book entry is not duplicated in data base
		Validates to make sure user is entering the correct format of an email address on the form (client side validation) 
		Validates to require user to enter data in the form fields (client side validation) 

- [x] BONUS - not required - Display validation failures to user with error message (example form e.g. /posts/new)
	Use of sinatra-flash, sinatra-redirect-with-flash and bootstrap form validations to create messages to the end user when a validation has failed

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

