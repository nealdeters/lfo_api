require "lfo_api/version"
require 'unirest'

module LfoApi
  class Client

    def initialize()
      @url = "http://not_real.com/customer_scoring"
    end

    def status
      Unirest.get(@url).code
    end

    def results
      # example url path - http://not_real.com/customer_scoring
      Unirest.get(@url).body
    end

    def income(income)
      # example url path - http://not_real.com/customer_scoring?income=50000
      Unirest.get(@url + "?income=" + income).body
    end

    def zipcode(zipcode)
      # example url path - http://not_real.com/customer_scoring?zipcode=60201
      Unirest.get(@url + "?zipcode=" + zipcode).body
    end

    def age(age)
      # example url path - http://not_real.com/customer_scoring?age=35
      Unirest.get(@url + "?age=" + age).body
    end

    def propensity(propensity)
      # example url path - http://not_real.com/customer_scoring?propensity=0.26532
      Unirest.get(@url + "?propensity=" + propensity).body
    end

    def ranking(ranking)
      # example url path - http://not_real.com/customer_scoring?ranking=C
      Unirest.get(@url + "?ranking=" + ranking).body
    end

    def income_zipcode_age(income, zipcode, age)
      # example url path - http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35
      Unirest.get(@url + "?income=" + income + "&zipcode=" + zipcode + "&age=" + age).body
    end
  end
end

