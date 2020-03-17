# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released 
# under the MIT License.

require 'node_error_int'
require_relative 'node_error_helper'

# NodeError.
# @abstract
# The NodeError interface's implementation. A NodeError type exception.
class NodeError < NodeErrorInt
  VERSION = '0.1.0'.freeze()
end
