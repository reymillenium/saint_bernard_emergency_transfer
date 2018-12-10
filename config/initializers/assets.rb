# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')



# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )



#  To fix the "Sprockets::Rails::Helper::AssetNotPrecompiled in Images#index" error
Rails.application.config.assets.precompile += %w( font-awesome-4.7.0/css/font-awesome.css )
Rails.application.config.assets.precompile += %w( alertifyjs/css/alertify.min.css )
Rails.application.config.assets.precompile += %w( alertifyjs/css/themes/default.min.css )
Rails.application.config.assets.precompile += %w( font-awesome-animation.css )
Rails.application.config.assets.precompile += %w( general_style.css )
Rails.application.config.assets.precompile += %w( sticky-footer-navbar.css )
Rails.application.config.assets.precompile += %w( tablesStyles.css )
Rails.application.config.assets.precompile += %w( sidenav_style.css )
Rails.application.config.assets.precompile += %w( checkbox_style.css )

