module InferredSlug
  module Slug

    def slug
      if !respond_to?(:name) || name.empty?
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