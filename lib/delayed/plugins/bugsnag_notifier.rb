module Delayed
  module Plugins
    class BugsnagNotifier < Plugin
      callbacks do |lifecycle|
        lifecycle.around(:invoke_job) do |job, *args, &block|
          begin
            block.call(job, *args)
          rescue Exception => exception
            error(job, exception)
            raise exception
          end
        end
      end

      private

        def self.error(job, exception)
          ::Bugsnag.notify(exception,
            error_class:   exception.class.name,
            error_message: "#{ exception.class.name }: #{ exception.message }",
            backtrace:     exception.backtrace,
            component:     'DJ-Worker',
            parameters:    {
              job: job.inspect
            }
          )
        end
    end
  end
end