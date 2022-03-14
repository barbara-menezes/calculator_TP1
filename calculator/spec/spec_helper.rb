RSpec.configure do |config|
  config.before(:each) do
    config.formatter = :documentation
  end
end