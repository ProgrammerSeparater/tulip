require 'bundler'
require 'json-schema'

require 'pp'

schema_file_str = File.open('./doc/schema/tags/index.json').read
schema = JSON.load(schema_file_str)

data = [
  {
    :word  => "Ruby",
    :priority =>  10,
    :source => "workshop"
  }
]

raise JSON::Validator.fully_validate(schema, data).pretty_inspect
