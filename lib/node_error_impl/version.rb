# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require 'data_structure_error_impl'

# NodeError.
# @class_description
#   A NodeError library's implementation.
# @attr message [String]
#   An error message.
class NodeError < DataStructureError
  VERSION = '2.0.0'.freeze()
end
