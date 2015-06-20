module Model
  class UserConfig
    include Mongoid::Document

    embedded_in :user

    field :write_to_db, type: Boolean
    field :notify, type: Boolean
    field :web_reload, type: Boolean
    field :write_html, type: Boolean
  end
end
