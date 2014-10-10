library ex_num6;

part 'ex_num6var.dart';

num_01(var palin) {
  var sicestunpalindrome = true;
  for (var i = 0; i < palin.length/2; i++ ){
    if(palin[palin.length-(1+i)] != palin[i]){
      sicestunpalindrome = false;
    }
  }
  if (sicestunpalindrome == true) {
    print('$palin est un palindrome');
  } else{
    print('$palin n\'est pas un palindrome');
  }
}

num_02(var jour1, var jour2) {
  Duration difference = jour1.difference(jour2);
  print('Cela donne ${difference.inDays} jours');
  print('');
}

num_03(var chiffre) {
  var lettre = '';
  if (chiffre > 90) lettre = 'A';
  else if(90 >= chiffre && chiffre > 80) lettre = 'B';
  else if(80 >= chiffre && chiffre > 70) lettre = 'C';
  else if(70 >= chiffre && chiffre >= 60) lettre = 'D';
  else if(60 > chiffre) lettre = 'E';
  print('${chiffre} donne une cote de ${lettre}');
}

num_04(var nom) {
  var liste1 = [];
  var liste2 = [];
  var liste3 = [];
  for (var i = 0; i < nom.length; i++){
    if(nom[i].length <8) {
      liste1.add(nom[i]);
    } else if (nom[i].length == 8) {
      liste2.add(nom[i]);
    } else if(nom[i].length > 8) {
      liste3.add(nom[i]);
    }
  }
  print('');
  print('Nom ayant moins de 8 lettres:\n');
  for (var i = 0; i < liste1.length; i++) {
    print(liste1[i]);
  }
  print('');
  print('Nom ayant 8 lettres:\n');
  for (var i = 0; i < liste2.length; i++) {
    print(liste2[i]);
  }
  print('');
  print ('Nom ayant plus de 8 lettres:\n');
  for (var i = 0; i < liste3.length; i++) {
    print(liste3[i]);
  }
}

num_05(listedesequipes, listedesjoueurs) {
  Map CFL = new Map();
  CFL[listedesequipes.elementAt(0)] = Montreal;
  CFL[listedesequipes.elementAt(1)] = Vancouver;
  CFL[listedesequipes.elementAt(2)] = Calgary;
  return CFL;
}

main() {
  //numéro 1
  print('Numéro 1: code pour savoir si c\'est un palindrome ou non');
  print('');
  for (var x = 0; x<=3; x++){
    num_01(palindrome[x]);
  }
   
  //numéro 2
  print('');
  print('Numéro 2: La différence entre 2 dates en jours');
  num_02(journee[0], journee[1]);
  
  //numéro 3 
  print('');
  print('Numéro 3: Transformer des notes en cotes');
  print('');
  for (var i = 0; i <= 4; i++){
    num_03(note[i]);
    print('');
  }
  
  //numéro 4  
  num_04(mot);
  
  //numéro 5 
  print('');
  print('Classer les joueurs dans leurs équipes respectives');
  print('');
  print(num_05(equipes,joueurs));
}
