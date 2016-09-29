#
# TeNOR - HOT Generator
#
# Copyright 2014-2016 i2CAT Foundation, Portugal Telecom Inovação
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class RouterInterface < Resource

  # Initializes Router Interface object
  #
  # @param [String] resource_name the Router Interface resource name
  # @param [String] router_id the ID of the router
  # @param [String] subnet_id the ID of the subnet
  def initialize(resource_name, router_id, subnet_id=nil, port_id=nil)
    @type = 'OS::Neutron::RouterInterface'
    if !subnet_id.nil?
      @properties = {"router_id" => router_id, "subnet_id" => subnet_id}
    else
      @properties = {"router_id" => router_id, "port_id" => port_id}
    end
    super(resource_name, @type, @properties)
  end
end