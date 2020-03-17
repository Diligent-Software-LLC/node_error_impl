require_relative 'version'

module NodeErrorHelper

  # choose(explanation = nil).
  # @abstract
  # In the case explanation is not a String, returns the DEFAULT_MESSAGE.
  # Otherwise, returns the argued String.
  # @return [String] choice
  # Either the default message, or the argument.
  def choose(explanation = nil)

    choice = NodeError::DEFAULT_MESSAGE
    if (!explanation.instance_of?(String))
      return choice
    else
      choice = explanation
    end
    return choice

  end

end