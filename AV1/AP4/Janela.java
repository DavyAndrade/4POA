package AV1.AP4;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

@SuppressWarnings("serial")
public class Janela extends JFrame implements ActionListener {

    private JButton btnCorrida;
    private JButton btnCancel;
    private JLabel lblPista;
    private JLabel lblVelocimetro;
    private ImageIcon imgJetSki1;
    private ImageIcon imgJetSki2;
    private ImageIcon imgJetSki3;
    private ImageIcon pista;
    private ImageIcon velocimetro;

    public Janela() {
        super();
        // ADICIONANDO ELEMENTOS AO FORMULÁRIO
        this.setLayout(null);
        this.setSize(1280, 650);
        this.setLocation(50, 50);
        this.setResizable(false);
        getContentPane().setBackground(Color.white);

        this.setTitle("Corrida de JetSkis");

        velocimetro = new ImageIcon("velocimetro.gif");
        pista = new ImageIcon("pista.png");

        this.lblPista = new JLabel(pista);
        this.lblVelocimetro = new JLabel(velocimetro);
        // POSICIONANDO OS ELEMENTOS DO FORM
        this.lblVelocimetro.setBounds(200, 490, 150, 150);
        this.lblPista.setBounds(0, 0, 1280, 650);

        this.add(lblPista);
        this.lblPista.add(lblVelocimetro);

        this.lblPista.setBackground(Color.BLACK);

        this.btnCorrida = new JButton("Start Rally");
        this.btnCancel = new JButton("Stop Rally");
        // POSIONADO OS BOTÕES
        this.btnCorrida.setBounds(500, 550, 120, 50);
        this.btnCancel.setBounds(640, 550, 120, 50);
        // INSERINDO AS IMAGENS DOS JET SKIS
        imgJetSki1 = new ImageIcon("jet1.png");
        imgJetSki2 = new ImageIcon("jet2.png");
        imgJetSki3 = new ImageIcon("jet3.png");

        this.lblPista.add(btnCorrida);
        this.lblPista.add(btnCancel);

        this.setVisible(true);

        btnCorrida.addActionListener(this);
        btnCancel.addActionListener(this);

        JPanel jPanel = new JPanel();
        jPanel.setSize(300, 70);
        jPanel.setLayout(null);
        jPanel.setLocation(970, 510);
        jPanel.setBorder(BorderFactory.createTitledBorder("[Grupo de Trabalho]"));
        jPanel.setVisible(true);

        this.repaint();

    }

    // INSERINDO AS JLABELS DOS JET SKIS
    public JLabel JLabelJetSki(String nome, ImageIcon img, int posX, int posY) {
        JetSkiThread jetSki = new JetSkiThread(nome, img, posX, posY);
        jetSki.setSize(256, 141);
        jetSki.setVisible(true);
        this.add(jetSki);
        return jetSki;
    }

    // PROGRAMANDO A AÇÃO DOS BOTÕES
    @Override
    public void actionPerformed(ActionEvent dispara) {
        if (dispara.getSource() == this.btnCorrida) {
            this.lblPista.add(JLabelJetSki("JetSki1", imgJetSki1, 0, 50));
            this.lblPista.add(JLabelJetSki("JetSki2", imgJetSki2, 0, 200));
            this.lblPista.add(JLabelJetSki("JetSki3", imgJetSki3, 0, 350));
        }
        if (dispara.getSource() == this.btnCancel) {
            System.exit(0);
        }
    }
}
