require 'delayed_job_bugsnag/version'
require 'delayed/plugins/bugsnag_notifier'

Delayed::Worker.plugins += [Delayed::Plugins::BugsnagNotifier]

module DelayedJobBugsnag
end
