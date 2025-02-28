namespace C-Sharp.CÓDIGOS.classes;

public class Carro
{
    public required string Modelo { get; set; }  // campo obrigatório com required
    public DateOnly LancadoEm { get; set; }
    public Cor cor { get; set; }
    /*OBS:
        pode ter uma variável com o mesmo nome do tipo de dado, mas nunca com o mesmo nome da classe
    */

    // Construtor para tornar o campo obrigatório
    public Carro(string modelo)
    {
        Modelo = modelo; // a variável recebe o valor vindo do parâmetro, quando a função é chamada na Main
    }

    public void NomeDoModelo() => Console.WriteLine(Modelo);

}

