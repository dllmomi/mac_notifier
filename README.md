# MacNotifier

Mac Notifier is notify "Notification Center" on apple script. simply, and asynchronously.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mac_notifier', github: 'dllmomi/mac_notifier'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mac_notifier

## Usage

simple notification:
```ruby
MacNotifier.notify(
  'notification body',
  title: 'notification title',
  subtitle: 'notification subtitle'
)
```

notification with voice:
```ruby
MacNotifier.notify_with_voice(
  'notification body',
  title: 'notification title',
  subtitle: 'notification subtitle'
)
# voice called 'notification body'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mac_notifier/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
