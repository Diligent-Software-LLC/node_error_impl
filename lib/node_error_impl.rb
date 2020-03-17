# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require_relative "node_error_impl/version"

# NodeError.
# @abstract
# A NodeError type exception implementation. Implements the NodeError interface.
class NodeError < NodeErrorInt

  include NodeErrorHelper

  # initialize(message = DEFAULT_MESSAGE).
  # @abstract
  # Constructor.
  # @param [String] message
  # An error message.
  # @return [NodeError]
  # A NodeError instance.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = choose(message)
  end

  # message().
  # @abstract
  # Attribute getter.
  # @return [String] m_copy
  # The message attribute's copy.
  def message()
    m_copy = @message.clone()
    return m_copy
  end

  # node?(any_object = nil).
  # @abstract
  # Boolean method. Verifies the Node type.
  # @return [TrueClass, FalseClass] node_bool
  # True in the case any_object is a Node instance. False otherwise.
  def node?(any_object = nil)
    node_bool = ((any_object.instance_of?(Node)) || (any_object.nil?()))
    return node_bool
  end

  private

  # message=(explanation = nil).
  # @abstract
  # Attribute setter. Sets message.
  # @param [String] explanation
  # A NodeError explanation.
  def message=(explanation = nil)
    @message = explanation.clone()
  end

end

