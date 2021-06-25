# frozen_string_literal: true

module Graphql
  module Types
    module ProductDecorator
      def self.prepended(base)
        base.field :test, GraphQL::Types::String, null: true
      end

      def test
        'test'
      end

      SolidusGraphqlApi::Types::Product.prepend self
    end
  end
end
