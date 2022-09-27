# Run Application commands

1. `bundle install`
2. `rails server`

# Routes

- The login page can be found at [localhost](http://127.0.0.1:3000/)
- The home page can be found at [localhost](http://127.0.0.1:3000/home)

# The front-end: Show, edit, update, delete & create a region, List all regions details

- Route
- Controller#action
- Model/db table
- View
- Error messages and flash helper (hash)
- Add layout links
<!-- - <td><%= link_to 'Delete', book_path(book), data: {turbo_method: :delete, turbo_confirm: "Are you sure?"} %></td> -->

  <!-- def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, status: :see_other
  end -->

# REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions

resources provides REST-ful routes to Rails resources
