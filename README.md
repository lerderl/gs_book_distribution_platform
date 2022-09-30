# Run Application commands

1. `bundle install`
2. `rails server`

# Routes

- The home page can be found at [localhost](http://127.0.0.1:3000/)

# The front-end: Show, edit, update, delete & create a region, List all regions details

- Route
- Controller#action
- Model/db table
- View
- Error messages and flash helper (hash)
- Add layout links

# REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions

resources provides REST-ful routes to Rails resources

# DRY code - Don't Repeat Yourself

- Re-factoring
- Extract away code redundancies

# Install bootstrap

- Run `rails importmap:install` to add importmap if it is not yet included int the project. Check `app/config/importmap.rb` to confirm.
- Then run `bin/importmap pin bootstrap` to add Bootstrap 5 JS to Rails 7 project via importmaps.
- In the `app/javascript/application.js`, add the line `import 'bootstrap'` to import bootstrap into application.js.
- In `config/importmaps.rb`, add these lines:
  1. pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
  2. pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.2/dist/esm/index.js"

- To install official Bootstrap 5 Ruby gem, add `gem 'bootstrap'` to your gemfile and run `bundle install`.
- Edit your `app/assets/stylesheets/application.css` to `app/assets/stylesheets/application.scss` and add this line `@import 'bootstrap';`
- Make sure your layout `(app/views/application.html.erb)` contains `<%= javascript_importmap_tags %>`
- Lastly, in case of any challenges with `bundle install`, you can run `gem install bootstrap` instead.

# REST for users
- Authentication: Login using secure password
- Restriction of actions: Based on logged in/logged out state
- Security: Admin user functionality and access level
