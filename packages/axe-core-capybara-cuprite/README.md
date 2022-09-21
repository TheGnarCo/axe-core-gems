# `axe-core-capybara-cuprite`

The `axe-core-capybara-cuprite` gem provides a chainable [axe API][] for [Capybara WebDriver][] and automatically injects into all frames.

## Usage

- In your Gemfile, add the `axe-core-capybara-cuprite` gem.

```Gemfile
source "https://rubygems.org"

gem 'axe-core-capybara-cuprite'
```

- Require `axe-capybara-cuprite` and use the exported member `AxeCapybaraCuprite`.

```rb
require 'axe-capybara'

# configure `AxeCapybaraCuprite`
driver = AxeCapybaraCuprite.configure do |c|
  # see below for a full list of configuration
  c.jslib_path = "next-version/axe.js"
end

# use the driver configuration instance
driver.page.navigate.to 'https://www.deque.com/'
```

### API

#### `AxeCapybaraCuprite.configure`

The configure method takes a configuration block object: `configure(*arg, &block)`

The block configuration object contains the below properties:

| Property | Type | Description |
|---|---|---|
| `jslib_path` (Optional) | `String` | Path to a custom `axe` source |
| `skip_iframes` (Optional) | `Boolean` | Indicate if frames should be excluded from injecting with `axe` |

## Development

> Note: Refer to [contributing guidelines](../../../CONTRIBUTING.md) for a full list of setup requirements.

Navigate to the directory of this gem - `src/packages/axe-core-capybara-cuprite`

Install dependencies (declared in `axe-core-capybara-cuprite.gemspec`):
```sh
bundle install
```

To run tests:
```
bundle exec rspec
```

[axe API]: https://github.com/dequelabs/axe-core/blob/develop/doc/API.md
[Capybara Webdriver]: https://github.com/teamcapybara/capybara/
[`geckodriver`]: https://github.com/mozilla/geckodriver/releases
[symbol]: https://ruby-doc.org/core-2.5.0/Symbol.html
