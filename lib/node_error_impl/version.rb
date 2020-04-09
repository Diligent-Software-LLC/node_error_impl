# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require 'node_error_int'

# NodeError.
# @class_description
#   A NodeError exception class implementation. Implements the NodeError
#   interface.
# @attr message [String]
#   An error message.
class NodeError < NodeErrorInt
  VERSION = '1.0.0'.freeze()
end
