# About Sinatra Comic Books

This is a simple Ruby app built with Sinatra that will allow you to keep track of your comic book collection.

User will have the ability to:

* Create their own account and sign in and out of their own account.
* Create one or more comic book listings.
* Add, edit or delete comic books.
* User can only create, view, edite or delete comic book listings from their own account.

## Future improvements planned:

* Create an option if the user wants to list their comic book publically
* Create something similar to a comic book exchange
* Create GUI that resembles more of a website
* Video walkthough on Youtube: https://www.youtube******


## Set Up

### Prerequisites
* Ruby
* SQLite3
* Boostrap https://getbootstrap.com/docs/4.4/getting-started/introduction/

## Usage

Installation
Fork the repository and clone it.
Run bundle install to install gems (If you don't have bundler, first run gem install bundler)
Set up the database with rake db:migrate.
The app uses the dotenv gem for environment variables (currently only one for the session_secret). Create a .env file in the root of the app and add SESSION_SECRET=your_secret (replace the your_secret with your own secret. Check Sinatra's "Session Secret Generation" section in their Readme for recommendations.
Run shotgun to run the app locally at http://localhost:9393/. That should be it!


## Development & Usage
	
### Installation

* Fork the repository and clone it.
* Run bundle install to install gems (If you don't have bundler, first run gem install bundler)
* Set up the database with rake db:migrate.
* The app uses the dotenv gem for environment variables (currently only one for the session_secret). Create a .env file in the root of the app and add SESSION_SECRET=your_secret (replace the your_secret with your own secret. Check Sinatra's "Session Secret Generation" section in their Readme for recommendations.
Run shotgun to run the app locally at http://localhost:9393/. That should be it!

```
sinatra_comic_books
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── SPEC.md
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── comic_book_controller.rb
│   │   ├── user_controller.rb
│   │   └── user_controller_hold.rb
│   ├── models
│   │   ├── comic.rb
│   │   └── user.rb
│   └── views
│       ├── comics
│       │   ├── edit.erb
│       │   ├── index.erb
│       │   ├── new.erb
│       │   └── show.erb
│       ├── home.erb
│       ├── index.erb
│       ├── layout.erb
│       ├── layout_hold.erb
│       ├── registrations
│       │   └── signup.erb
│       └── sessions
│           └── login.erb
├── config
│   ├── database.yml
│   └── environment.rb
├── config.ru
├── db
│   ├── comics.db
│   ├── development.sqlite
│   ├── migrate
│   │   ├── 20191210202106_create_users.rb
│   │   ├── 20191214033852_create_comic_list.rb
│   │   ├── 20191214122636_update_comics_table.rb
│   │   └── 20191216000049_add_column_to_comics.rb
│   └── schema.rb
└── public
    ├── images
    │   ├── avenger.jpeg
    │   ├── batman.jpeg
    │   ├── captainamerica.jpeg
    │   ├── collage.jpeg
    │   ├── collage2.jpeg
    │   ├── deadpool.jpeg
    │   ├── fantastic4.jpeg
    │   ├── fantastic4.jpg
    │   ├── isis.jpeg
    │   ├── kapow.jpg
    │   ├── spiderman2.jpg
    │   ├── storm.jpeg
    │   ├── superman.jpeg
    │   ├── wonderwoman.jpeg
    │   ├── wonderwoman2.jpeg
    │   └── xmen.jpeg
    ├── javascripts
    └── stylesheets
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sinatra_comic_books. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sinatra Comic Books project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sinatra_comic_books/blob/master/CODE_OF_CONDUCT.md).
