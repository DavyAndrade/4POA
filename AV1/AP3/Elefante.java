package AV1.AP3;

import java.io.Serializable;
public class Elefante implements Serializable {
    private String nome;
    private int idade;
    private String especie;
    private double peso;
    private double altura;
    private String cor;
    private String sexo;
    private String localDeOrigem;
    private String dataNascimento;
    private boolean possuiPresas;
    private double tamanhoOrelha;
    private String estadoSaude;

    public Elefante(String nome, int idade, String especie, double peso, double altura, String cor, String sexo,
            String localDeOrigem, String dataNascimento, boolean possuiPresas, double tamanhoOrelha,
            String estadoSaude) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
        this.peso = peso;
        this.altura = altura;
        this.cor = cor;
        this.sexo = sexo;
        this.localDeOrigem = localDeOrigem;
        this.dataNascimento = dataNascimento;
        this.possuiPresas = possuiPresas;
        this.tamanhoOrelha = tamanhoOrelha;
        this.estadoSaude = estadoSaude;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getLocalDeOrigem() {
        return localDeOrigem;
    }

    public void setLocalDeOrigem(String localDeOrigem) {
        this.localDeOrigem = localDeOrigem;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public boolean isPossuiPresas() {
        return possuiPresas;
    }

    public void setPossuiPresas(boolean possuiPresas) {
        this.possuiPresas = possuiPresas;
    }

    public double getTamanhoOrelha() {
        return tamanhoOrelha;
    }

    public void setTamanhoOrelha(double tamanhoOrelha) {
        this.tamanhoOrelha = tamanhoOrelha;
    }

    public String getEstadoSaude() {
        return estadoSaude;
    }

    public void setEstadoSaude(String estadoSaude) {
        this.estadoSaude = estadoSaude;
    }

    @Override
    public String toString() {
        return "Elefante [nome=" + nome + ", idade=" + idade + ", especie=" + especie + ", peso=" + peso + ", altura="
                + altura + ", cor=" + cor + ", sexo=" + sexo + ", localDeOrigem=" + localDeOrigem + ", dataNascimento="
                + dataNascimento + ", possuiPresas=" + possuiPresas + ", tamanhoOrelha=" + tamanhoOrelha
                + ", estadoSaude=" + estadoSaude + "]";
    }

}
