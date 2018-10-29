#! /usr/bin/awk -f
BEGIN{
  split("+,-,*,/",operators,",")
  count=0
  srand()
  print "please enter your name"
  print "hit enter for every calculation"
}

{
  x=int(rand()*100)+1
  y=int(rand()*10)+1
  operation=operators[int(rand()*4)+1]
}
operation=="+"{answer=x+y}
operation=="*"{answer=x*y}
operation=="/"{answer=int(x/y)}
operation=="-"{answer=x-y}

{
  print "what is the answer of" " "  x operation y "= ?"
}

#{ answer=(xoperator[operator_x]y)
#}

#(operator_x=="2"){
 # operator="*"
  #answer=x*y
#}

#(operator_x=="3"){
  #operator="/"
 # answer=int(x/y)
  #print "enter quotient only"
#}

#(operator_x=="4"){
 # operator="-"
  #answer=(x-y)
#}

{
 # print "what is the answer of" x operator[operator_x]  y "?"
  getline number
  if(number=="exit"){
    print "thank you very much for playing"
    exit
  }
  if(number==answer){
    count+=10
    print "you are correct and score is"count
  } else{
  print "you are wrong and score is" count
}

if(count==50){
  print "thank you genius you won the game"
  exit 
}
}
