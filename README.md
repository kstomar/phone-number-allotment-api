# README

## Installation

Install Ruby with RVM

`rvm install 2.5.1`

`rvm use 2.5.1 --default`

Install Postres with homebrew

`brew install postgresql`

Install Bundler

`gem install bundler`

Now you can install gems and setup the DB

```
bundle install
rails db:setup
```

Start your server

`rails s`


API endpoints-
  > To assign a number

    request_type: POST
    URL: localhost:3000/alloted_numbers

    form-data: alloted_number[number](optional)
               alloted_number[first_name]
               alloted_number[last_name]
      Example: alloted_number[number] = 971-313-1330
               alloted_number[first_name] = Chetan
               alloted_number[last_name] = Mehta

  > To check all alloted numbers
    request_type: GET
    URL: localhost:3000/alloted_numbers
