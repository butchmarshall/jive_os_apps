[![Gem Version](https://badge.fury.io/rb/jive_os_apps.svg)](http://badge.fury.io/rb/jive_os_apps)
[![Build Status](https://travis-ci.org/butchmarshall/jive_os_apps.svg?branch=master)](https://travis-ci.org/butchmarshall/jive_os_apps)

# JiveOsApps

JiveOsOns is a mountable engine for Rails that enables [Jive](https://www.jivesoftware.com) [OpenSocial App](https://community.jivesoftware.com/docs/DOC-112287) functionality.

This engine doesn't actually do much.  OpenSocial apps from Jive are just XML definitions.  This just provides a template.

Release Notes
============

**0.0.3**
 - XML configuration via YAML files wasn't very well thought out.  Now drop in template files directly.

**0.0.2**
 - Now serves valid XML to Jive

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jive_os_apps'
```

And then execute:

    $ bundle

## Usage

In your routes.rb file, mount the rails engine to enable add-on support.

```ruby
Rails.application.routes.draw do
	mount JiveAddOns::Engine => "/special_path_for_os_app_xml"
end
```

Configuration file for your first add-ons XML by adding a YAML file in `/views/jive_os_apps/os_apps/show_[Name Here].xml.erb` for each name and `/views/jive_os_apps/os_apps/locale_[Name Here].xml.erb` for each locale.

See /spec/dummy/config/jive_osapp_dummy_config.yml for an example

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/butchmarshall/jive_os_apps.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).