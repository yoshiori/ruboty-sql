require "active_record"
require "hirb"

module Ruboty
  module Handlers
    class Sql < Base
      on(/sql (?<sql>.*)/, name: "run_sql", description: "run sql")

      config = Hash[ENV.keys.select { |key|
        key.start_with? "RUBOTY_SQL_"
      }.map{ |key|
        [key.gsub("RUBOTY_SQL_", "").downcase, ENV[key]]
      }]
      ActiveRecord::Base.establish_connection(config)

      private

      def run_sql(message)
        sql = message[:sql]
        result = ActiveRecord::Base.connection.select_all(sql)

        message.reply(Hirb::Helpers::AutoTable.render(result[0...20]), code: true)
      rescue => e
        message.reply(e)
      end
    end
  end
end
