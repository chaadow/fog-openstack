module Fog
  module OpenStack
    class Workflow
      class V2
        class Real
          def get_cron_trigger(name)
            request(
              :expects => 200,
              :method  => "GET",
              :path    => "cron_triggers/#{CGI.escape(name)}"
            )
          end
        end

        class Mock
          def get_cron_trigger(_name)
            response = Excon::Response.new
            response.status = 200
            response.body = {"version"     => "2.0",
                             "name"        => "cron_trigger1",
                             "description" => "d1"}
            response
          end
        end
      end
    end
  end
end
