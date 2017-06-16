module Telegraph
  module Page
    class CommonPageSchema < Dry::Validation::Schema
      define! do
        required(:access_token) { str? & filled? }
        required(:title) { str? & min_size?(1) & max_size?(256) }
        optional(:author_name) { str? & max_size?(128) }
        optional(:author_url) { str? & max_size?(512) }
        required(:content) { str? & filled? & max_size?(64 * 1024 * 1024) }
        optional(:return_content) { bool? }
      end
    end

    CreatePageSchema = Dry::Validation.Schema(CommonPageSchema)

    EditPageSchema = Dry::Validation.Schema(CommonPageSchema) do
      required(:path) { str? & filled? }
    end

    GetPageSchema = Dry::Validation.Schema do
      required(:path) { str? & filled? }
      optional(:return_content) { bool? }
    end

    GetPageListSchema = Dry::Validation.Schema do
      required(:access_token) { str? & filled? }
      optional(:offset) { int? }
      optional(:limit) { int? & size?(0..200) }
    end

    GetViewsSchema = Dry::Validation.Schema do
      required(:path) { str? & filled? }
      required(:year) { int? & included_in?(2000..2100) }
      required(:month) { int? & included_in?(1..12) }
      optional(:day) { int? & included_in?(1..31) }
      optional(:hour) { int? & included_in?(0..24) }
    end
  end
end