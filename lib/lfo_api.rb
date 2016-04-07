require "lfo_api/version"
require 'unirest'

module LfoApi
  class Client

    def initialize()
      @url = "https://data.cityofchicago.org/resource/xzkq-xp2w.json"
    end

    def status
      Unirest.get(@url).code
    end

    def results
      Unirest.get(@url).body
    end

    def search_jobs(job_title)
      Unirest.get(@url + "?job_titles=" + job_title).body
    end

    def search_department(department)
      Unirest.get(@url + "?department=" + department).body
    end

    def search_employee_annual_salary(employee_annual_salary)
      Unirest.get(@url + "?employee_annual_salary=" + employee_annual_salary).body
    end
  end
end

