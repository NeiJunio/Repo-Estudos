namespace C-Sharp.CÓDIGOS.funções;

class Program
{
    static void Main()
    {
        var matematica = new OperacoesMatematicas(); // chama a classe OperacoesMatematicas

        matematica.Adicionar(1, 7); // chama a função, passando valores como parametros

        matematica.Adicionar(valor1: 1, valor2: 7); // chama a função, passando valores nomeados como parametros


        var resultado = matematica.Adicionar(7, 1);
        Console.WriteLine(resultado); // imprime o resultado da função


        // retornando 2 resultados
        var resultado = matematica.Adicionar(7, 1);
        Console.WriteLine(resultado); // imprime 8, Nei
        
            // acessando os resultados pela ordem

            Console.WriteLine(resultado.item1); // imprime 8
            Console.WriteLine(resultado.item2); // imprime Nei


            // acessando os resultados pela ordem, com itens nomeados
            
            Console.WriteLine(resultado.resultadoDaAdicao); // imprime 8
            Console.WriteLine(resultado.autor); // imprime Nei


        (int resultado, string nome) = matematica.Adicionar(7,1);
        Console.WriteLine(resultado); // imprime 8
        Console.WriteLine(nome); // imprime Nei


        // valores opcionais
        matematica.Teste(valor1: 1); // como não informei o valor2, ele preencheu com 7, conforme a classe Teste
                                     // se eu informar o valor2 na chamada da função, ele vai sobrescrever o valor 7
                                     // valores opcionais NUNCA podem ser o primeiro parâmetro, sempre os ÚLTIMOS
    }

}
