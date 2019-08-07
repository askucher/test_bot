require! {
    \superagent
}

module.exports = (tanos)->
    { db, bot } = tanos
    execureOrder = ($user, cb)->
        console.log '!!!', $user.chosenPizza
        console.log '!!!',$user.size
        cb null
    { execureOrder }