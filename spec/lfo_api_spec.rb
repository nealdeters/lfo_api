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

  it 'should search jobs based on job titles' do
    result = url.search_jobs("police officer")
    result = result[0]["job_titles"]
    
    expect(result.downcase).to eq("police officer")
  end

  it 'should search department based on department' do
    result = url.search_department("Police")
    result = result[0]["department"]
    
    expect(result.downcase).to eq("police")
  end

  it 'should search employee annual salary based on employee_annual_salary' do
    result = url.search_employee_annual_salary("90744")
    result = result[0]["employee_annual_salary"]
    
    expect(result).to eq("90744.00")
  end

end
