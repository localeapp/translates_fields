# translates_fields

[![Build status](https://secure.travis-ci.org/Locale/translates_fields.png)](http://travis-ci.org/Locale/translates_fields)

Provides a way of storing and retreiving tranlsation keys and options in your ActiveRecord models.

## Installation

Add `gem 'translates_fields'` to your `Gemfile` and run `bundle install`.

## Use

Your model must have a text column defined.

    class Address < ActiveRecord::Base
      translates :country
    end

You then assign a translation key for your instances.

    address = Address.new(:country => :france)
    puts address.country 
    # => This is the same as calling I18n.translate(:'models.address.attributes.country.france')


## Compatibility

* ruby 1.9.2
* rails 3+