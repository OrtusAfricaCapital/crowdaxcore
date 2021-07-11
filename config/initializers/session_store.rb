if Rails.env == "production"

    Rails.application.config.session_store :cookie_store, key: "_crowdax_api", domain: "https://crowdax.herokuapp.com"
    else
        Rails.application.config.session_store :cookie_store, key: "_crowdax_api"
    
    end