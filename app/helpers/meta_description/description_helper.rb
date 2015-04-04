module MetaDescription
  module DescriptionHelper
    def metadescription
      tag(:meta, :name => 'Description', :content => description_text)
    end

    def description_text
      if actions_description.present?
        actions_description
      else
        default_description
      end
    end

    def controllers_descriptions
      MetaDescription.meta_descriptions[controller.controller_name]
    end

    def actions_description
      controllers_descriptions[controller.action_name]
    end

    def default_description
      MetaDescription.meta_descriptions['default']
    end
  end
end
