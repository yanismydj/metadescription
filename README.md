# MetaDescription

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
```


That's it!
