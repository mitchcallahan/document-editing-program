# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@rails/ujs", to: "rails.js"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "jquery", to: "jquery.min.js"
pin "jquery-ujs", to: "jquery-ujs.js" # Add this line to include jquery_ujs library
pin "turbolinks", to: "turbolinks.js" # Add this line to include turbolinks library
