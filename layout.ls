module.exports =
    "main:bot-step" :
        text: "Pizza bot"
        buttons: 
            "Start" : "goto:start"
    "start:bot-step":
        text: "Please choose the pizza" 
        buttons: 
            "Havayan" : 
                goto: "havayan"
                store: "$user.chosenPizza = 'havayan'"
            "4cheese" : 
                goto: "4cheese"
                store: "$user.chosenPizza = '4cheese'"
    "havayan:bot-step" :
        text: "You have chosen {{$user.chosenPizza}}"
        menu: 
            "Size 1" : 
                goto: "payment"
                store: "$user.size = '1'"
            "Size 2" : 
                goto: "payment"
                store: "$user.size = '2'"
    "4cheese:bot-step" :
        text: "You have chosen {{$user.chosenPizza}}"
    "payment:bot-step" :
        text: "Your order is {{$user.chosenPizza}} with size {{$user.size}}"
        buttons:
            "Process payment" :
                    "goto" : "processing"
                    "store": "({ $user, $app }, cb)-> $app.execureOrder $user, cb"
    
    
    