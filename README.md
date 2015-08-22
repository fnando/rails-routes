# Rails::Routes

Too many routes on your Rails app? Me too! This gem allows you to separate your routes on different files. Just create them at `config/routes/*.rb` and you're good to go.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-routes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-routes

## Usage

After adding this gem to your project, you can create multiple route files inside `config/routes`. Just make sure you wrap your routes with

```ruby
# config/routes/v1.rb
Rails.application.routes.draw do
  namespace :v1 do
    resources :things
  end
end

# config/routes/v2.rb
Rails.application.routes.draw do
  namespace :v2 do
    resources :things
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails-routes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

