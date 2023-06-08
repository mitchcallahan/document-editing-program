# document-editing-program
a Simple Ruby on Rails Document Editing program, more focussed on functionality to learn Ruby rather than front end.

## Dev
- using Rails version 7.0.5

## Program Layout
- Controllers for operations -> delete, edit, create, view are in all under directory app/controllers/posts_controller.rb
- html.erb files are under directory app/views/posts/
- posts.scss used for styling is under directory assets/stylesheets/posts.scss


## Running Program
- First open a terminal
- Second, cd to where you saved the downloaded project using command $ ```cd /path/to/app```
- Third, once your in that current directory, run $ ```bundle install```
- Foruth, once all required gems are installed run $ ```bin/rails db:migrate RAILS_ENV=development``` to accept db migrations
- run the server using command $ ```rails s```
- Finally go to this link once the server is running, http://localhost:3000/posts

(Note: do not include the '$' symbol in any command it is there for reference)

## Error handling
when you run command ```rails s``` to start the server, if this error shows: 
```
Migrations are pending. To resolve this issue, run this command in terminal under the app directory:
        bin/rails db:migrate RAILS_ENV=development
You have 1 pending migration:
20230607050819_create_posts.rb
```
then run stop the server (control + c), and make sure you run the command ```bin/rails db:migrate RAILS_ENV=development``` to accept pending migrations. 
Start the Server again (```rails s```)
