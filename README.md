# MetaDescription
[![Gem Version](https://badge.fury.io/rb/meta_description.svg)](http://badge.fury.io/rb/meta_description)

Metadescription allows you to easily specify lots of different metadescriptions for all your different pages/controller actions.  This is helpful for SEO

## Installation instructions
* Add to your `Gemfile`
```ruby
gem 'metadescription', github: 'yanismydj/metadescription'
```

* Add the tag to your `application.html.erb` file in your `<head>` section
```ruby
<%= metadescription %>
```

* Create and customize a `meta_descriptions.yml` file in `config/metadescriptions.yml`
Example file:
```yaml
default: 'this is the default meta description'
home:
  index: 'this is the meta description for the home#index page'
your_controller_here:
  your_action_name_here: 'the metadescription for your_controller_here#your_action_name_here'
other_controller:
  all: 'this metadescription will be used controllerwide for this controller'
```

## Overriding metadescription for an action or a controller
If you need to set the metadescription for a specific action or controller, just set a `@metadescription` instance variable in your action or in your controller
IE:
```ruby
# action specific
class HomeController < ApplicationController
  def index
    @metadescription = "This page is SEO optimized for whatever it does!"
  end
end
```

```ruby
# controller specific
class HomeController < ApplicationController
  before_filter :set_metadescription

  def index
  end

  private
  def set_metadescription
    @metadescription = "This page is SEO optimized for whatever it does!"
  end
end
```

That's it!
