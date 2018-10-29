#! /usr/bin/awk -f
BEGIN{
  FS=" "
  print "the format for using this calculator is given below"
  print "number(space)operator(space)number    (12 * 12) if you exit just type exit"
}

($2=="+"){
  print ($1+$3)
}

($2=="-"){
  print ($1-$3)
}

($2=="*"){
  print ($1*$3)
}

($2=="/"){
  if($3~/^0/){
    print "the value is undefined"
  } else{
  print ($1/$3)
}
}

($2=="^"){
  print ($1^$3)
}

($1=="tan" || $1=="cos" || $1=="sin"){
  print $1($2)
}

($0~/exit/){
  exit
}
