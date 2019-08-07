require! {
    \require-ls
    \./layout.ls
    \./app.ls
    \./config.json
    \./reload.ls
}
tanos-choose =
    | config.dev => \../tanos/index.ls
    | _ => \tanos
tanos = require tanos-choose
err, data <- tanos { app, layout, ...config }
console.log err
#
return if not config.remoteRestartSecret?
console.log \enabled-remote-restart
data.http.post \/remote-update, reload