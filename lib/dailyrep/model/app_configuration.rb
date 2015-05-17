module Model
  class AppConfiguration
    include Mongoid::Document

    belongs_to :user

    field :write_to_db, type: Boolean
    field :notify, type: Boolean
    field :web_reload, type: Boolean
    field :write_html, type: Boolean
  end
end
