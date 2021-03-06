# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( pikeadmin.js)
Rails.application.config.assets.precompile += %w( comment_ajax.js )
Rails.application.config.assets.precompile += %w( pike-index.js)
Rails.application.config.assets.precompile += %w( counterup/jquery.counterup.min.js )
Rails.application.config.assets.precompile += %w( waypoints/lib/jquery.waypoints.min.js )
Rails.application.config.assets.precompile += %w( favicon.ico )
Rails.application.config.assets.precompile += %w( login-style.css fullcalendar/fullcalendar.min.css )
Rails.application.config.assets.precompile += %w( courses.css )
Rails.application.config.assets.precompile += %w( fullcalendar/fullcalendar.min.js detect.js fastclick.js )
Rails.application.config.assets.precompile += %w( star-rating/star-rating.min.js star-rating/theme.js star-rating/star-rating.min.css star-rating/theme.css)
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
