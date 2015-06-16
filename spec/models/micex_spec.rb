describe ::Model::Entity::Micex do

  it 'checks enitity type' do
    expect(subject.process_type)
      .to be_equal(::AppConstants::RESULT_PROCESS_TYPE_JSON)
  end

  it 'checks process method' do
    binding.pry
    expect(subject.process(JSON.parse(fixtures[:micex])))
      .to be_kind_of(::Result::VarResult)
  end
end
