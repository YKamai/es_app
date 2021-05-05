module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    ALL = { query: { match_all: {}}}
    MATCH = -> (q, f){{ query: { multi_match: { query: q, fields: f }}}}

    def self.search(query)
      __elasticsearch__.search(
        query.blank? ? ALL : MATCH.(query, self::SEARCH_FIELDS)
      )
    end

    def self.has_index?
      __elasticsearch__.client.indices.exists?(index: self.to_s.pluralize.downcase)
    end
  end
end
