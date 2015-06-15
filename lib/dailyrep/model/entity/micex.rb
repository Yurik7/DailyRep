module Model
  module Entity
    class Micex < VarEntity
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
          delta_value,
          id,
          user.id)
      end
    end
  end
end
