#! /usr/bin/awk -f
BEGIN{
  srand()
  count=0
  print "please guess a number between 1and 5"

}
{ 
  random_number=int(rand()*5)+1
  number=$0
  if(int(number)==random_number){
    count+=10
    print "the number is" random_number
    print "you won the game" 
    print "your score is" count
  } else{
      print "the number is" random_number
      print "you loss"
      print " your score is"  count
}
}
