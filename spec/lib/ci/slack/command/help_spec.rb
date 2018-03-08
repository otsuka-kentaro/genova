require 'rails_helper'

module CI
  module Slack
    module Command
      describe Help do
        def app
          CI::Slack::Command::Help.instance
        end

        subject { app }

        it 'should be return greeting message' do
          expect(message: "#{SlackRubyBot.config.user} help", channel: 'channel').to respond_with_slack_message(/I am ECS deploy Bot\./)
        end
      end
    end
  end
end
