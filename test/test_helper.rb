require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

ENV["RAILS_ENV"] = "test"

require "bundler/setup"
require "minitest/autorun"
require "minitest/utils"
require "rack/test"

require "action_controller/railtie"
require "action_view/railtie"

require_relative "./dummy/config/environment"
