// Need G4P library
import g4p_controls.*;

import com.hp.hpl.jena.update.UpdateRequest;
import com.hp.hpl.jena.update.*;

import java.util.Date;
import java.sql.Timestamp;

String titreProjet;
String descriptionProjet;

UpdateRequest ur = new UpdateRequest();
UpdateProcessor up;
String  service ="http://fuseki-smag0.rhcloud.com/ds/update";


public void setup() {
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here

}

public void draw() {
  background(230);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
}
