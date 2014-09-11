class MacNotifier::Notification
  attr_reader :body, :title, :subtitle

  TYPE_ERROR_MESSAGE_BASE = 'parameter type include not String. '
  EMPTY_BODY_MESSAGE = 'notification body empty.'

  def initialize(body, title = '', subtitle = '')
    @body = body
    @title = title
    @subtitle = subtitle
    validate_parameter_type
    validate_body
  end

  def validate_parameter_type
    error_message = []
    instance_variables.each do |variable|
      val = instance_variable_get(variable)
      unless val.instance_of? String
        error_message << "#{val}: #{val.class}"
      end
    end
    return if error_message.empty?
    raise ArgumentError, TYPE_ERROR_MESSAGE_BASE + error_message.join(', ')
  end

  def validate_body
    raise ArgumentError, EMPTY_BODY_MESSAGE if body.empty?
  end
end
