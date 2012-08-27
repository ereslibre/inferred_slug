require 'active_record'

module InferredSlug
  module Finders

    def find_by_slug(*args)
      record = find(*args)
      if record and record.respond_to?(:slug)
        return nil unless record.slug.to_s == args.first.to_s
      end
      record
    end

    def find_by_slug!(*args)
      find_by_slug(*args) or raise ActiveRecord::RecordNotFound
    end

  end
end

class ActiveRecord::Base
  extend InferredSlug::Finders
end
