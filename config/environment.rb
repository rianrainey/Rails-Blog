# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RrBlog::Application.initialize!

# For paperclip image processing
Paperclip.options[:command_path] = "/usr/local/bin"