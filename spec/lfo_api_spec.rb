require 'spec_helper'

# The hypothetical API is accessible via a standard HTTP GET request. For example:

# http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35

# A successful request to the API will return a JSON response resembling the following:

# {
#   "propensity": 0.26532,
#   "ranking": "C"
# }

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

  it 'should search by propensity' do
    result = url.income("0.26532")
    result = result[0]["propensity"]
    
    expect(result).to eq("0.26532")
  end

  it 'should search by ranking' do
    result = url.income("C")
    result = result[0]["ranking"]
    
    expect(result).to eq("C")
  end

  it 'should search by income' do
    result = url.income("50000")
    result = result[0]["income"]
    
    expect(result).to eq("50000")
  end

end
