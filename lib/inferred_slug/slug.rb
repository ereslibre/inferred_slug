require 'stringex'

module InferredSlug
  module Slug

    def slug
      if not respond_to?(:name) or name.empty?
        id
      else
        "#{id}-#{name}".to_url
      end
    end

    def to_param
      slug
    end

  end
end
