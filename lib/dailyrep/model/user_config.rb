module Model
  class UserConfig
    include Mongoid::Document

    embedded_in :user

    field :write_to_db, type: Boolean
    field :push_notify, type: Boolean
    field :mail_notify, type: Boolean
  end
end
