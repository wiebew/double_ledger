require 'yaml_helpers.rb'
include YamlHelpers
::ACCOUNT_STRUCTURE = transform_keys_to_symbols(YAML.load_file("#{Rails.root}/config/account_structure.yml"))

