package AP2;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Agenda {
    public void write(String name, String number) {
        try {
            FileWriter fw = new FileWriter("c:/arquivo/agenda.txt", true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(name + ";" + number);
            bw.newLine();
            bw.close();
            fw.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void readAll() {
        try {
            FileReader fr = new FileReader("c:/arquivo/agenda.txt");
            BufferedReader br = new BufferedReader(fr);

            while (br.ready()) {
                String aux = br.readLine();
                String[] dados = aux.split(";");
                System.out.println("Nome: " + dados[0] + " Telefone: " + dados[1]);
            }
            br.close();
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void readOne(String name) {
        try {
            FileReader fr = new FileReader("c:/arquivo/agenda.txt");
            BufferedReader br = new BufferedReader(fr);

            boolean found = false;

            while (br.ready()) {
                String aux = br.readLine();

                if (aux.contains(name)) {
                    String[] dados = aux.split(";");
                    System.out.println("Nome: " + dados[0] + ", Telefone: " + dados[1]);
                    found = true;
                }
            }

            if (!found) {
                System.out.println("Dados não encontrados!");
            }
            br.close();
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
