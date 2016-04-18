require "lfo_api/version"
require 'unirest'

module LfoApi
  class Client
    attr_accessor :url
    # validates :searchType, :value, presence: true

    def initialize()
      @url = "http://not_real.com/customer_scoring"
    end

    # def status
    #   Unirest.get(@url).code
    # end

    def results
      # example url path - http://not_real.com/customer_scoring
      Unirest.get(@url).body
    end

    def search(searchType, value)
      Unirest.get(@url + "?" + searchType + "=" + value).body
    end

    # def income(income)
    #   Unirest.get(@url + "?income=" + income).body
    # end

    # def zipcode(zipcode)
    #   Unirest.get(@url + "?zipcode=" + zipcode).body
    # end

    # def age(age)
    #   Unirest.get(@url + "?age=" + age).body
    # end

    # def propensity(propensity)
    #   Unirest.get(@url + "?propensity=" + propensity).body
    # end

    # def ranking(ranking)
    #   Unirest.get(@url + "?ranking=" + ranking).body
    # end

    def income_zipcode_age(income, zipcode, age)
      # example url path - http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35
      Unirest.get(@url + "?income=" + income + "&zipcode=" + zipcode + "&age=" + age).body
    end
  end
end

