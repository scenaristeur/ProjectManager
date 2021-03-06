/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void description_change1(GTextArea source, GEvent event) { //_CODE_:description:814843:
  println("textarea1 - GTextArea event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:description:814843:

public void titre_change1(GTextField source, GEvent event) { //_CODE_:titre:376006:
  println("textfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:titre:376006:

public void nouveau_projet_click1(GButton source, GEvent event) { //_CODE_:nouveau_projet:667050:
  println("button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  titreProjet=titre.getText();
  descriptionProjet=description.getText();
 Projet projet=new Projet(); 
 projet.setLabel(titreProjet);
 projet.setDescription(descriptionProjet);
 projet.affiche();
 projet.publie();
} //_CODE_:nouveau_projet:667050:




// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  description = new GTextArea(this, 17, 45, 160, 80, G4P.SCROLLBARS_NONE);
  description.setOpaque(true);
  description.addEventHandler(this, "description_change1");
  titre = new GTextField(this, 19, 8, 160, 30, G4P.SCROLLBARS_NONE);
  titre.setOpaque(true);
  titre.addEventHandler(this, "titre_change1");
  nouveau_projet = new GButton(this, 195, 11, 80, 30);
  nouveau_projet.setText("Nouveau Projet");
  nouveau_projet.addEventHandler(this, "nouveau_projet_click1");

}

// Variable declarations 
// autogenerated do not edit
GTextArea description; 
GTextField titre; 
GButton nouveau_projet; 
