require 'rails/generators'

module InferredSlug
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "This generator installs inferred slugs on all your models"
      source_root File.expand_path('../templates', __FILE__)

      def copy_slug_hook
        say_status "copying", "slug global hook", :green
        copy_file "slug.rb", "config/initializers/slug.rb"
      end

    end
  end
end