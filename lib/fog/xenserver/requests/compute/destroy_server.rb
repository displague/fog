module Fog
  module Compute
    class XenServer
      class Real
        def destroy_server( vm_ref , extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.destroy'}, vm_ref)
        end
      end

      class Mock
        def destroy_server()
          Fog::Mock.not_implemented
        end
      end
    end
  end
end
