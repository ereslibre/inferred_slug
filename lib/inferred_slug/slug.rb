require 'stringex'

module InferredSlug
  module Slug

    def slug
      if !respond_to?(:name) || name.nil? || name.empty?
        id.to_s
      else
        "#{id}-#{name}".to_url
      end
    end

    def to_param
      slug
    end

  end
end
