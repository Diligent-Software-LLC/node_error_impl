# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

#require_relative "node_error_impl/version"

# NodeError.
# @class_description
#   A NodeError library's implementation.
# @attr message [String]
#   An error message.
class NodeError #< DataStructureError

  # Constants.
  DEFAULT_MESSAGE = 'The argument is not a Node instance.'.freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes a NodeError instance.
  # @param message [String]
  #   An error message.
  # @return [NodeError]
  #   A NodeError instance.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @description
  #   Gets the error message.
  # @return [String]
  #   The message String, frozen.
  def message()
    return @message.freeze()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets the message attribute.
  # @param explanation [String]
  #   A NodeError explanation.
  # @raise [TypeError]
  #   In the case the argument is anything other than a String instance.
  # @return [String]
  #   The argument.
  def message=(explanation = nil)

    unless (explanation.instance_of?(String))
      raise(TypeError, "The explanation #{explanation} is not a String.")
    else
      @message = explanation
    end

  end

end
