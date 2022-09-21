require 'capybara'
require 'capybara/cuprite'
require 'axe/configuration'

module AxeCapybaraCuprite
  # configure method
  # - which takes a configuration block optional for Axe
  def self.configure
    # instantiate axe configuration (singleton) with defaults or given config
    raise Exception, 'Please provide a configure block for AxeCapybara' unless block_given?

    config = Axe::Configuration.instance

    # provide a capybara cuprite page object
    config.page = get_driver

    # await and return
    yield config
    config
  end

  private

  def self.get_driver
    Capybara.drivers[:cuprite].call
  end
end
