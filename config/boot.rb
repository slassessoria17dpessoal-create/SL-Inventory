# Load local .env file if it exists
dotenv_path = File.expand_path("../.env", __dir__)
if File.exist?(dotenv_path)
  File.readlines(dotenv_path).each do |line|
    line = line.strip
    next if line.empty? || line.start_with?("#")
    key, val = line.split("=", 2)
    next unless key && val
    val = val.strip.gsub(/\A['"]|['"]\z/, '')
    ENV[key] ||= val
  end
end

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
