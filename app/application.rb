


class Application

    def call(env)
        resp = Rack::Response.new

        t = Time.now
        today_date = [t.year, t.month, t.day]
        # @morn_end, @aft_end = Time.new(*today_date, 12, 0, 0), Time.new(*today_date, 18, 0, 0)

        if Time.now < Time.new(*today_date, 12, 0, 0)
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end
    


