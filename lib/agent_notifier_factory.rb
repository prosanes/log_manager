require_relative './nil_agent_notifier'

class AgentNotifierFactory
  def self.build(config)
    if config[:agent_notifier]
      config[:agent_notifier]
    elsif defined? ::NewRelic::Agent
      ::NewRelic::Agent
    else
      NilAgentNotifier.new
    end
  end
end
