module ActivityNotification
  module Swagger::NotificationsParameters #:nodoc:
    module TargetParameters #:nodoc:
      def self.extended(base)
        base.parameter do
          key :name, :target_type
          key :in, :path
          key :description, "Target type of notifications: e.g. 'users'"
          key :required, true
          key :type, :string
          key :example, "users"
        end
        base.parameter do
          key :name, :target_id
          key :in, :path
          key :description, "Target ID of notifications. This parameter type is integer with ActiveRecord, but will be string with Mongoid or Dynamoid ORMs."
          key :required, true
          key :type, :string
          key :example, 1
        end
      end
    end

    module IdParameter
      def self.extended(base)
        base.parameter do
          key :name, :id
          key :in, :path
          key :description, 'ID of notification record. This parameter type is integer with ActiveRecord, but will be string with Mongoid or Dynamoid ORMs.'
          key :required, true
          key :type, :string
          key :example, 123
        end
      end
    end

    module FilterByParameters
      def self.extended(base)
        base.parameter do
          key :name, :filtered_by_type
          key :in, :query
          key :description, "Notifiable type to filter notification index: e.g. 'Comment'"
          key :required, false
          key :type, :string
          key :example, "Comment"
        end
        base.parameter do
          key :name, :filtered_by_group_type
          key :in, :query
          key :description, "Group type to filter notification index, valid with 'filtered_by_group_id': e.g. 'Article'"
          key :required, false
          key :type, :string
          key :example, "Article"
        end
        base.parameter do
          key :name, :filtered_by_group_id
          key :in, :query
          key :description, "Group instance ID to filter notification index, valid with 'filtered_by_group_type'"
          key :required, false
          key :type, :string
          key :example, 2
        end
        base.parameter do
          key :name, :filtered_by_key
          key :in, :query
          key :description, "Key of notifications to filter notification index: e.g. 'comment.default'"
          key :required, false
          key :type, :string
          key :example, "comment.default"
        end
      end
    end
  end
end