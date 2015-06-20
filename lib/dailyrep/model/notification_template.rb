module Model
  class NotificationTemplate
    include Mongoid::Document

    field :title
    field :message
  end
end