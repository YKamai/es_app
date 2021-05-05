class Article < ApplicationRecord
  include Searchable

  SEARCH_FIELDS = %w[title^3 content]
end
