module Model
  module Entity
    class Micex < VarEntity
      field :entity_type, type: Integer, default: ::AppConstants::ENTITY_MICEX

      def process_type
        ::AppConstants::RESULT_PROCESS_TYPE_JSON
      end

      def process(json)
        result_json = json[1]
        last_val = result_json['LAST'].to_f
        open_val = result_json['OPEN'].to_f
        ::Result::VarResult.new(
          last_val,
          open_val,
          self)
      end

      def prepare_message(result)
        # # binding.pry
        {
          title: notif_template.title,
          body: notif_template.message.serial_replace('?', [
            result.current.to_s,
            result.previous.to_s,
            delta_value.to_s])
        }
      end

      def notif_template
        @notif_template ||= template
      end
    end
  end
end
