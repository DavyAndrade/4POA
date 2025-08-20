package AP2;

public class Main {
    public static void main(String[] args) {
        Agenda a1 = new Agenda();

        a1.write("Davy", "123");

        a1.readAll();

        a1.readOne("Davy");
    }
}
