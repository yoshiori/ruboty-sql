# Ruboty::Sql

ruboty handler.
run sql

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-sql'
gem 'sqlite3' # Your database library
```

And then execute:

    $ bundle

## Usage

```
> ruboty sql select * from incenses;
+----------------------------+----+--------+----------------------------+---------+
| created_at                 | id | source | updated_at                 | user_id |
+----------------------------+----+--------+----------------------------+---------+
| 2015-03-02 20:48:36.990325 | 1  |        | 2015-03-02 20:48:36.990325 | 1       |
| 2015-03-03 18:49:27.894872 | 2  |        | 2015-03-03 18:49:27.894872 | 2       |
| 2015-03-07 16:19:12.756657 | 3  |        | 2015-03-07 16:19:12.756657 | 1       |
| 2015-03-10 11:11:38.409086 | 4  | api    | 2015-03-10 11:11:38.409086 | 1       |
+----------------------------+----+--------+----------------------------+---------+
4 rows in set
```

## ENV
like rails's database.yml.
add prefix `RUBOTY_SQL_`

adapter => RUBOTY_SQL_ADAPTER
username => RUBOTY_SQL_USERNAME

### security (strongly recommended)
Create **readonly** user.

### example for sqlite3

```
RUBOTY_SQL_ADAPTER=sqlite3
RUBOTY_SQL_DATABASE=/path/to/sqlite3.db
```
## Contributing

1. Fork it ( https://github.com/yoshiori/ruboty-sql/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
