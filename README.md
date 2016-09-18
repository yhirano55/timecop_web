# timecop_web

A web interface for Timecop. This is especially useful during development and QA.

![](https://i.gyazo.com/4ae9e109c18713958342c93744ea4194.png)

## Installation

First add the gem to your development environment and run the `bundle` command to install it.

```ruby
gem 'timecop_web', group: :development
```

## Usage

Add to your routes.rb:

```ruby
Your::App.routes.draw do
  if Rails.env.development?
    mount TimecopWeb::Engine, at: '/timecop_web'
  end
end
```

Then visit `http://localhost:3000/timecop_web`, you can use Timecop through web interface.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
