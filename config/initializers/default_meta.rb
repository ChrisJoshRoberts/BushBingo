# config/initializers/default_meta.rb
# # Initialize default meta tags.


# DEFAULT_META = YAML.load_file(Rails.root.join("config/meta.yml"))

begin
  DEFAULT_META = YAML.load_file(Rails.root.join("config/meta.yml"))
rescue StandardError => e
  puts "Error loading meta.yml: #{e.message}"
  DEFAULT_META = {}
end
