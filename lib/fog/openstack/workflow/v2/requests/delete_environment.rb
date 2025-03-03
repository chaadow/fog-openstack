module Fog
  module OpenStack
    class Workflow
      class V2
        class Real
          def delete_environment(name)
            request(
              :expects => 204,
              :method  => "DELETE",
              :path    => "environments/#{CGI.escape(name)}"
            )
          end
        end

        class Mock
          def delete_environment(_name)
            response = Excon::Response.new
            response.status = 204
            response
          end
        end
      end
    end
  end
end
