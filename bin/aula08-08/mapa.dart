void main() {

   Map<String, int> notas = {'João': 8, 'Maria': 9, 'Pedro': 7};

   print(notas['Maria']); // Saída: 9

   notas['Lucas'] = 10; //Adiciona um elemento no Conjunto

   print(notas); // Saída: {João: 8, Maria: 9, Pedro: 7, Lucas: 10}
   notas.remove('Pedro');
   print(notas); // Saída: {João: 8, Maria: 9, Lucas: 10}
}