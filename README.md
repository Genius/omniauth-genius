# omniauth-genius

An OmniAuth strategy for authenticating with the Genius API.

## Installation

In your Gemfile:

``` ruby
gem 'omniauth-genius'
```

## Usage

Here's an example on setting up `omniauth-genius` (NOTE: this should be placed
in something like `config/initializers/omniauth.rb`:

``` ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :genius, ENV['GENIUS_CLIENT_ID'], ENV['GENIUS_CLIENT_SECRET']
end
```
