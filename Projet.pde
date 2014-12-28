class Projet{
  String id;
  String label;
  String decriptionP;
  Date now = new Date();
  
 Projet(){
   println("nouveau Projet");
 } 
  Projet(String _titre){
    label=_titre;

 } 
 void setLabel(String _label){
  label=_label; 
 }
 void setDescription(String _description){
  decriptionP=_description; 
 }
 void affiche(){
    //  description=_description;
   println("nouveau Projet"+label+" "+decriptionP);
 }
 void publie(){
Sparql sparql= new Sparql();
id = String.valueOf(now.getTime());

println(id);
sparql.nouveauProjet(id,label,decriptionP);
 }
}
