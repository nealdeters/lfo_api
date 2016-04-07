require 'spec_helper'

describe LfoApi::Client do
  let(:url){LfoApi::Client.new}

  it 'has a version number' do
    expect(LfoApi::VERSION).not_to be nil
  end

  it 'should return 200 OK status' do
    result = url.status

    expect(result).to eq(200)
  end

  it 'should return all api results as an array' do
    result = url.results.class

    expect(result).to eq(Array)
  end

  it 'should search by income' do
    result = url.income("50000")
    result = result[0]["income"]
    
    expect(result).to eq("50000")
  end

end
