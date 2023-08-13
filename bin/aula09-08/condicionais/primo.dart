void main() {
   int num=479001599, div=0;

    for(int aux=1 ; aux<=num ; aux++){
      if(num%aux==0) {
          div++;
        }
    }
        
    if(div==2){
      print("é primo");
    }else{
      print("Não é primo");
    }
}