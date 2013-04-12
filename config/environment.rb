# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Crowdcode::Application.initialize!
MARKDOWN = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)

# begin
#   Tire.configure do
#     logger STDERR
#     url Settings.elasticsearch_url
#   end
# rescue => e
#   p "Wrong configuration: #{e}"
# end
