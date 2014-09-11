require "mac_notifier/version"
require File.expand_path('../models/notification', __FILE__)

module MacNotifier

  DEFAULT_TITLE = 'notification'
  DEFAULT_SUBTITLE = ''
  NOTIFICATION_COMMAND_BASE = "osascript -e 'display notification \"%s\" with title \"%s\" subtitle \"%s\"' &"
  SAY_COMMAND_BASE = "say \"%s\" &"

  # mac の notification center に通知を出力する
  # @param [MacNotifier::Notification] notification MacNotifier::Notification のオブジェクト
  # @return [Boolean]
  def self.notify(notification)
    notification_command = NOTIFICATION_COMMAND_BASE % [
      notification.body,
      notification.title,
      notification.subtitle,
    ]
    system notification_command
  end

  # 通知用本文を読み上げた後、mac の notification center に通知を出力する
  # @param [MacNotifier::Notification] notification MacNotifier::Notification のオブジェクト
  # @note
  #   本文に日本語を指定した場合、システム環境設定で日本語に対応した読み上げ音声の設定が必要。
  # @return [Boolean]
  def self.notify_with_voice(notification)
    say_command = SAY_COMMAND_BASE % [notification.body]
    system say_command
    notify notification
  end
end
