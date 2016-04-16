# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( logo.svg  
  icons/icon_1.svg icons/icon_2.svg icons/icon_3.svg icons/icon_4.svg 
  icons/icon_5.svg icons/icon_6.svg icons/icon_7.svg icons/icon_8.svg
  icons/pic_1.svg icons/pic_2.svg icons/pic_3.svg icons/pic_4.svg
  icons/pic_5.svg icons/pic_6.svg)