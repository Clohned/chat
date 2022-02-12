fx_version 'adamant'
games { 'gta5' }

lua54 'yes'

client_scripts {
  'cl_chat.lua'
}

shared_scripts {
  '@es_extended/imports.lua',
  '@oxmysql/lib/MySQL.lua',
  'config.lua'
}

server_scripts {
  'sv_chat.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/index.css',
    'html/config.default.js',
    'html/config.js',
    'html/App.js',
    'html/Message.js',
    'html/Suggestions.js',
    'html/vendor/vue.2.3.3.min.js',
    'html/vendor/flexboxgrid.6.3.1.min.css',
    'html/vendor/animate.3.5.2.min.css',
    'html/vendor/latofonts.css',
    'html/vendor/fonts/LatoRegular.woff2',
    'html/vendor/fonts/LatoRegular2.woff2',
    'html/vendor/fonts/LatoLight2.woff2',
    'html/vendor/fonts/LatoLight.woff2',
    'html/vendor/fonts/LatoBold.woff2',
    'html/vendor/fonts/LatoBold2.woff2',
  }