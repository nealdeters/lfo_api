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

  it 'should return json as the resulting value' do
    result = url.results

    expect(results).to respond_with_content_type(:json)
  end

  it 'should search by propensity' do
    result = url.search("propensity","0.26532")
    result = result[0]["propensity"]
    
    expect(result).to eq("0.26532")
  end

  it 'should search by ranking' do
    result = url.search("ranking","C")
    result = result[0]["ranking"]
    
    expect(result).to eq("C")
  end

  it 'should search by income' do
    result = url.search("income", "50000")

    expect(result).to respond_with_content_type(:json)
  end

  it 'should search by zipcode' do
    result = url.search("zipcode", "60201")

    expect(result).to respond_with_content_type(:json)
  end

  it 'should search by age' do
    result = url.search("age", "35")

    expect(result).to respond_with_content_type(:json)
  end

  it 'should search by results and result in an array' do
    result = url.results

    expect(result).to respond_with_content_type(:json)
  end

  it 'should search by income, zipcode, age and result in an Array' do
    result = url.income_zipcode_age("50000", "60201", "35")
    
    expect(result).to respond_with_content_type(:json)
  end

end
