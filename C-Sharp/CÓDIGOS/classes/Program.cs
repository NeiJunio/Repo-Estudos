namespace C-Sharp.CÓDIGOS.classes;

public class Program
{
    static void Main()
    {
        // 1ª opção: 
        var carro = new Carro(); // Cria uma instância da variável Carro        // --+
                                                                                //   |             
        carro.Modelo = "Ferrari"; // alterando o valor da variável Modelo       //   |-> OBJETO REAL CRIADO A PARTIR
        carro.Cor = Cor.Vermelho; // acessa um dos valores da enum de cores     //   |   DA CLASSE (MOLDE) CARRO   
        carro.LancadoEm = new DateOnly(2024, 01, 01);                           // --+



        // 2ª opção
        var carro = new Carro
        {
            Modelo = "Ferrari",
            Cor = Cor.Vermelho,
            LancadoEm = new DateOnly(2024, 01, 01)
        };


        // 3ª opção (SE TIVER USANDO CONSTRUTOR PARA TORNAR O CAMPO OBRIGATÓRIO)
        var carro = new Carro("Ferrari")
        {
            Modelo = "Ferrari",
            Cor = Cor.Vermelho,
            LancadoEm = new DateOnly(2024, 01, 01)
        };


        // CHAMANDO A FUNÇÃO
        carro.NomeDoModelo(); // imprime o nome do modelo, conforme instrução Console.WriteLine(nome) na classe Carro

        /* STATIC
            não precisa criar uma instância da classe, posso chamar direto, e acessar suas propriedades

            -> a função não depende de nenehum valor da instância da classe real e do objeto, estando associado apenas a classe

            -> se marcar uma variavel como static, ela vai ser compartilhada com todas as suas instâncias



            a função Main sempre é static porque quando o arquivo .exe rodar, ele vai buscar algo como:
            Program.main();

            sem precisar instanciar a propria Main, nem depender de outros valores

            -> se eu estiver dentro de uma classe static, obrigatoriamente todas as funções que estiver dentro dela devem ser static
        */
    }
}
