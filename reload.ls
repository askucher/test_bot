require! {
    \shelljs
    \fs : { read-file-sync } 
    \livescript
    \./config.json
}

module.exports = (req, res)->
    layout = read-file-sync "./layout.ls", "utf8"
    try
        model = livescript.compile layout
        #secret  = config.remoteRestartSecret
        shelljs.exec('npm run update')
        res.send "no issues"
    catch err
        res.status(400).send "#{err}"