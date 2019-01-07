# app/libraries
class ApiVersion
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end
  
  # check whether version is specified or is default
  def matches?(request)
    @default || request.headers['Accept'].include?("application/vnd.medexprimereemr.v#{@version}")
  end
end