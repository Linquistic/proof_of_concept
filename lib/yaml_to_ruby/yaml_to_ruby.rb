require 'yaml'

yaml_to_ruby = YAML::load_file(File.join(__dir__, 'yaml.yml'))
object = yaml_to_ruby['name'].capitalize
attributes = yaml_to_ruby['attributes'].map{|attr| "#{attr.keys[0]}:#{attr.values[0]}"}
# puts yaml_to_ruby.inspect

system("rails g model #{object} #{attributes.join(" ")}")
