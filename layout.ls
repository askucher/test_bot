module.exports =
    "main:bot-step" :
        text: "Pizza bot"
        menu: 
            "Start" : 
                goto: "start"
                maxwidth: yes
            "Start2" : 
                goto: "start"
                maxwidth: yes
            "Start3" : 
                goto: "start"
                maxwidth: yes
            "Start4" : 
                goto: "start"
            "Start5" : 
                goto: "start"
    "start:bot-step":
        text: "Please choose the pizza" 
        menu: 
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
        menu:
            "Process payment" :
                    "goto" : "processing"
                    "store": "({ $user, $app }, cb)-> $app.execureOrder $user, cb"
    
    
    