require "mac_notifier/version"

module MacNotifier
  DEFAULT_TITLE = 'notification'
  DEFAULT_SUBTITLE = ''
  NOTIFICATION_COMMAND_BASE = "osascript -e 'display notification \"%s\" with title \"%s\" subtitle \"%s\"' &"
  SAY_COMMAND_BASE = "say \"%s\" &"

  # mac の notification center に通知を出力する
  # @param [String] notification_body 通知する本文
  # @param [String] title 通知タイトル
  # @param [String] subtitle 通知サブタイトル
  # @return [Boolean]
  def self.notify(notification_body, title: DEFAULT_TITLE, subtitle: DEFAULT_SUBTITLE)
    notification_command = NOTIFICATION_COMMAND_BASE % [
      notification_body,
      title,
      subtitle,
    ]
    system notification_command
  end

  # 通知用本文を読み上げた後、mac の notification center に通知を出力する
  # @param [String] notification_body 通知する本文
  # @param [String] title 通知タイトル
  # @param [String] subtitle 通知サブタイトル
  # @note
  #   本文に日本語を指定した場合、システム環境設定で日本語に対応した読み上げ音声の設定が必要。
  # @return [Boolean]
  def self.notify_with_voice(notification_body, title: DEFAULT_TITLE, subtitle: DEFAULT_SUBTITLE)
    say_command = SAY_COMMAND_BASE % [notification_body]
    system say_command
    notify notification_body, title: title, subtitle: subtitle
  end
end
