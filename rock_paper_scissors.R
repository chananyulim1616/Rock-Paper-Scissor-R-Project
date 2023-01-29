exit <-0
action <- c("Rock","Paper","Scissors")
num <- c(1,2,3)
#sample(action ,size = 1)

P_num <- readline(prompt="Select Action\n[1] Rock\n[2] Paper\n[3] Scissors\n")

ans <- readline(prompt="Want to exit?[Y/N]")
play <- function(){
    exit <-0
    action <- c("Rock","Paper","Scissors")
    num <- c(1,2,3)
    while (exit == 0) 
    {
        P_num <- readline(prompt="Select Action\n[1] Rock\n[2] Paper\n[3] Scissors\n")
        P_num
        P_num <- as.integer(P_num)
        bot_num <- sample(num ,size = 1)
        print(paste("You :",action[P_num]))
        if (P_num-1 == 0){
            P_num <- 4
        }
        print(paste("Bot :",action[bot_num]))
        if (P_num == bot_num){
            print(paste("Draw"))
        }else if (bot_num == P_num-1){
            print("Win")
        }
        else{
           print("Lose")
        }
        ans <- readline(prompt="Want to exit?[Y/N]\n")
        ans
        if (ans %in% c("Y","y")){
            exit <- 1
        }
    }
}
play()
