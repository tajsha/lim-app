# LIM App

In this app Create a tiny RESTful API to index a page's content. "Index the content" means to parse the page content and store its content - in this case to store the content that is found inside the tags h1, h2 and h3 and the links.

## Usage:

* Ruby version

    `ruby 2.2.2p95`
    `Rails 5.1.4`

* System dependencies

    `Wombat`
    `Puma`
    `SQlite`
    `Bootstrap`
    `Material UI`
    `jQuery UI`
    `Turbolinks`

* Configuration
    Add below gems into you `Gemfile`
    ```ruby
        gem 'wombat'
        gem 'bootstrap',     '~> 4.0.0.beta'
        gem 'materialize-rails'
        gem 'material_icons'
        gem 'jbuilder', '~> 2.5'
    ```
    After adding all gem run:

    ```ruby
        > Bundle install
    ```

* Database creation

    Run below command to create DB:

    ```ruby
        > rake db:create
    ```

* Database initialization

    Below command is going to initialize db with all tables:

    ```ruby
        > rake db:migrate
    ```

* How to run the test suite

   To run the application:

   ```ruby
        > rails s
   ```

   To run the test cases:

   ```ruby
        > rails test
   ```

* Rest apis for this application:

   List of apis:

   ```ruby
        > curl -i -H "Accept: application/json" "http://localhost:3000/sites.json"
        > curl -i -H "Accept: application/json" "http://localhost:3000/sites/1.json"
        > curl -i -H "Accept: application/json" "http://localhost:3000/sites/1.json"
        > curl -i -H "Accept: application/json" "http://localhost:3000/tags/1.json"
        > curl -H "Content-Type: application/json" -X POST -d '{"url": "http://twitter.com"}' http://localhost:3000/sites.json
        > curl -H "Content-Type: application/json" -X PUT -d '{"url": "http://twitter.com/test/"}' http://localhost:3000/sites/1.json
   ```

