module YamlHelpers
  #take keys of hash and transform those to a symbols recursively
  def transform_keys_to_symbols(value)
    return value if not value.is_a?(Hash)
    hash = value.inject({}){|memo,(k,v)| memo[k.to_sym] = transform_keys_to_symbols(v); memo}
    return hash
  end

 
  def load_env_config(filename)
    # load env from file in Rails.root/config
    # does erb transformation so you can use ruby code in yaml file e.g. aaa:  <%= ruby code %>
    transform_keys_to_symbols(YAML.load(ERB.new(File.read("#{Rails.root}/config/#{filename}")).result)[Rails.env])   
  end
  
  
end
