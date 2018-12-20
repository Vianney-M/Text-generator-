
String[] mots;
int x = 5;
int y = 85;
String z;

void setup(){
  size(800,600);
  background(41,46,73);
}

void draw (){
  afficher();
}

void mousePressed(){
     effacer();
     aleatoire();
      text(z,x,y);
}

void afficher() {
  PFont police;
  police = createFont ("Verdana Gras", 25);
  textFont (police);
  text("This program help you to generate a random word", 40, 25);
  textSize(15);
  text("cliquer pour afficher mot, taper x pour effacer", 200, 55);
  String texte = "Pomme verte Banane jaune Enfants Joyeux Belle demoiselle Maman joyeuse Monsieur en costume Personne au bureau Verre cassé Bouteille vide";
  mots = split(texte,' ');
}

void aleatoire (){
   x= int(random (5,600));
   y= int(random (85,580));
   z = mots[int(random(mots.length))];
}

void effacer (){
      background(41,46,73); //mise à zéro pour la réinitialisation de la couleur de départ 
      //Renouvellement du titre sur l'écran 
      textSize(25);
      text("This program help you to generate a random word", 40, 25);
      textSize(15);
      text("cliquer pour afficher mot, taper x pour effacer", 200, 55);
}

void keyPressed(){
   if (key == 'x') {
      effacer();
   }
}
