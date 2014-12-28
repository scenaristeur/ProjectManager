class Sparql {

 
    Sparql() {
  }

void nouveauProjet(String _id, String _label, String _description) {
  String idProjet=_id;
  String labelProjet=_label;
  String descriptionProjet=_description;

 String prefixes="PREFIX rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#>";
  prefixes+="PREFIX rdfs:   <http://www.w3.org/2000/01/rdf-schema#>";
  prefixes+="PREFIX owl: <http://www.w3.org/2002/07/owl#>";
  prefixes+="PREFIX ex:   <http://example.org/>";
  prefixes+="PREFIX doap: <http://usefulinc.com/ns/doap#>";
  prefixes+="PREFIX smag:   <http://smag0.blogspot.fr/ns/smag0#>";
  prefixes+="PREFIX dc: <http://purl.org/dc/elements/1.1/>";

  String requete=prefixes;
  requete+="INSERT DATA {";
  requete+="GRAPH <http://smag0.blogspot.fr/Projets>{";
  requete+="smag:"+idProjet+" rdf:type smag:Projet . ";
  requete+="smag:Projet owl:sameAs doap:Project . ";
  requete+="smag:"+idProjet+" dc:title  \""+labelProjet+"\" . ";
  requete+="smag:"+idProjet+" dc:description  \""+descriptionProjet+"\" . ";
  requete+="}}";
  println (requete);
  ur.add(requete);
  up=UpdateExecutionFactory.createRemote(ur, service);
  up.execute();
  println("projet ajouté sur http://fuseki-smag0.rhcloud.com/ds/query?query=select+*+where+%7B%3Fs+%3Fp+%3Fo%7D&output=xml&stylesheet=%2Fxml-to-html.xsl ");
}
}
