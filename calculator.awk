#! /usr/bin/awk -f
BEGIN{
  FS=" "
  while(1){
    getline a
    getline b
    getline c
    if(b=="+"){
      print"the value is" a+c
    }
    if(b=="*"){
      print"the value is" a*c
    }  
    if(b=="/" && c==0){
      print "the value is infinity"
    }          
    if(b=="/"){
      print"the value is" a/c
    }   
    if(b=="-"){
      print "the value is" a-c
    }
  }
}
