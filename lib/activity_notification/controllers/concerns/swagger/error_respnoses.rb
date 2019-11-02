module ActivityNotification
  module Swagger::ErrorResponses #:nodoc:
    module InvalidParameterError #:nodoc:
      def self.extended(base)
        base.response 400 do
          key :description, "Invalid parameter"
          content 'application/json' do
            schema do
              key :'$ref', :Error
            end
          end
        end
      end
    end

    module ForbiddenError
      def self.extended(base)
        base.response 403 do
          key :description, "Forbidden because of invalid parameter"
          content 'application/json' do
            schema do
              key :'$ref', :Error
            end
          end
        end
      end
    end

    module ResourceNotFoundError
      def self.extended(base)
        base.response 404 do
          key :description, "Resource not found"
          content 'application/json' do
            schema do
              key :'$ref', :Error
            end
          end
        end
      end
    end
  end
end