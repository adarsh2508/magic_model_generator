Dir[File.join(File.dirname(__FILE__), 'magic_model_generator/**/*.rb')].sort.each { |lib| require lib }