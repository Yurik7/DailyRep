def fixtures
  @fixtures ||= YAML.load_file('spec/fixtures/micex.yml').symbolize_keys
end

describe ::Model::Entity::Micex do

  it 'checks enitity type' do
    expect(subject.process_type)
    .to be_equal(::AppConstants::RESULT_PROCESS_TYPE_JSON)
  end

  context 'process method' do
    let(:result) { subject.process(JSON.parse(fixtures[:input_json])) }

    it 'checks output type' do
      expect(result).to be_kind_of(::Result::VarResult)
    end

    it 'checks output values' do
      expect(result.current).to be > 0
    end
  end
end
