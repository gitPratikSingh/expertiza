require 'sidekiq'

class OutWorker
    include Sidekiq::Worker

    def perform(complexity)
        case complexity
        when "super_hard"
            sleep 20
            puts "super hard task, took quite a bit of effort"
        when "hard"
            sleep 20
            puts "hard task, took a bit of work"
        when "easy"
            sleep 20
            puts "easy task, that wasn't a lot of effort"
    end    
end
