package AV1.AP3;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Main {
    public static void main(String[] args) {
        Elefante e1 = new Elefante("Dumbo", 10, "Africano", 5000.0, 3.0, "Cinza", "Macho", "África", "2014-05-20", true,
                1.5, "Saudável");

        try (FileOutputStream arqSer = new FileOutputStream("c:/arquivo/elefante.ser")) {
            ObjectOutputStream oSer = new ObjectOutputStream(arqSer);
            oSer.writeObject(e1);
            oSer.close();
            arqSer.close();

            e1.setNome("Dumbo Jr.");
            System.out.println(e1);
            System.out.println("-".repeat(20));

            FileInputStream arqDes = new FileInputStream("c:/arquivo/elefante.ser");
            ObjectInputStream oDes = new ObjectInputStream(arqDes);

            e1 = (Elefante) oDes.readObject();

            oDes.close();
            arqDes.close();

            System.out.println("-".repeat(20));
            System.out.println(e1);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
