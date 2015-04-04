module MetaDescription
  class Engine < ::Rails::Engine

    initializer 'meta_description.add_helpers' do |app|
      ActionView::Base.send :include, MetaDescription::DescriptionHelper
    end

  end
end
