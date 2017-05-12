# Rails::Jwplayer
**rails-jwplayer** is JW Player for Rails, it provides a jwplayer_tag helper to create JW Player video plugin. Current version of JW Player is 7.11.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-jwplayer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-jwplayer

And add this require statement to your `application.js` file:
```ruby
//= require rails-jwplayer
```

## Configuration

you need to create configuration file jwplayer.rb, and setup the jwplayer.key
```ruby
# config/initializers/jwplayer.rb
Rails::Jwplayer.key = "your jwplayer key"

```

## Usage

First include jwplayer config on the page
```ruby
<%= jwplayer_config_include %>
```
Than place a div with JW Player
```ruby
<%= jwplayer_tag(file: "you video url")  %>
```
You can pass other options to jwplayer helper to customize it:
```ruby
<%= jwplayer_tag(file: "you video url", width: 400, height: 300, autostart: true, repeat: true)  %>
```
More information for customization could be found [JW Player configuration](https://developer.jwplayer.com/jw-player/docs/developer-guide/customization/configuration-reference/)

You can use the Javascript API component of JW Player, This API can be used to enhance the functionality of your video embeds, or to implement rich page-level video interactions, more information [JW Player Javascript API](https://developer.jwplayer.com/jw-player/docs/developer-guide/api/javascript_api_introduction/)
```ruby
jwplayer.on('pause', function(event){
    console.log('pause');
});
```
Or get the pause method

```ruby
jwplayer.pause()
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xuyao91/rails-jwplayer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

