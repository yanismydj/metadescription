require 'yaml'
require 'meta_description/engine'

module MetaDescription
  def meta_descriptions
    @@meta_descriptions ||= begin
      YAML.load_file('config/meta_descriptions.yml')
    end
  end

  module_function :meta_descriptions
end
