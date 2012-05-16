require 'active_record'

module InferredSlug
  module Finders

    def find_by_slug(*args)
      record = find(*args)
      if record && record.respond_to?(:slug)
        return nil unless record.slug == args.first
      end
      record
    end

    def find_by_slug!(*args)
      find_by_slug(*args) || raise ActiveRecord::RecordNotFound
    end

  end
end

class ActiveRecord::Base
  extend InferredSlug::Finders
end