fx_version 'cerulean'
game 'gta5'

author "qbcore-framework"
description 'Progressbar based on mythic_progbar. (Edited by QBCore & MRScripts)'
version '1.1.0'

ui_page "html/index.html"

client_script "client/main.lua"

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js',

    'html/css/bootstrap.min.css',
    'html/js/jquery.min.js',
}

exports {
    'Progress',
    'ProgressWithStartEvent',
    'ProgressWithTickEvent',
    'ProgressWithStartAndTick',
    'isDoingSomething'
}
