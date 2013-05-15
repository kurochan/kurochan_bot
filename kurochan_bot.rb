# -*- encoding: utf-8 -*-
require "#{PLUGIN_ROOT}/twitter_bot"

class KurochanBot < TwitterBot
  def initialize
    super
    job :intval => 3.seconds, :func => :hello
    job :intval => 5.minutes, :func => :normal_task
  end

  def normal_task
  end
end
