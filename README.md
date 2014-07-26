# YYID [![[travis]](https://travis-ci.org/janlelis/yyid.rb.png)](https://travis-ci.org/janlelis/yyid.rb)

Generates random tokens that look like [type 4 UUIDs](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_4_.28random.29): `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

In contrast to [RFC 4122](https://tools.ietf.org/rfc/rfc4122.txt), it uses all digits (128bit)

Source of randomness: [SecureRandom](https://github.com/ruby/ruby/blob/v2_1_2/lib/securerandom.rb)

## Install

```
$ gem install yyid
```


## Usage

```ruby
require 'yyid'
YYID.new #=> "9a4161c6-7742-b6ea-301a-d1e5e1df151d"
```

## Also Available

- YYID for [JavaScript](https://github.com/janlelis/yyid.js)
- YYID for [Go](https://github.com/janlelis/yyid.go)
- YYID for [Elixir](https://github.com/janlelis/yyid.ex)

