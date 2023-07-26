# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins /localhost:\d+/, /ky-frontend\.herokuapp\.com/
    origins 'https://ky-frontend-b6d0bab7573a.herokuapp.com'
    # origins "*"
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end
