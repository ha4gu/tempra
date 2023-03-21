# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@fortawesome/fontawesome-free", to: "https://unpkg.com/@fortawesome/fontawesome-free@6.3.0/js/all.js"
pin "@fortawesome/fontawesome-svg-core", to: "https://unpkg.com/@fortawesome/fontawesome-svg-core@6.3.0/index.mjs"
pin "@fortawesome/free-brands-svg-icons", to: "https://unpkg.com/@fortawesome/free-brands-svg-icons@6.3.0/index.mjs"
pin "@fortawesome/free-regular-svg-icons", to: "https://unpkg.com/@fortawesome/free-regular-svg-icons@6.3.0/index.mjs"
pin "@fortawesome/free-solid-svg-icons", to: "https://unpkg.com/@fortawesome/free-solid-svg-icons@6.3.0/index.mjs"
