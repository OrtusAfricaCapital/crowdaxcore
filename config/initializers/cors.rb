Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
       origins "http://localhost"
       resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
    allow do
      origins "https://crowdax.herokuapp.com"
      resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    allow do
      origins "https://crowdaxxx.herokuapp.com"
      resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
   end