namespace C-Sharp.CÓDIGOS.funções;

public class OperacoesMatematicas
{
    public void Adicionar(int valor1, int valor2)
    {
        var resultado = valor1 + valor2

        Console.WriteLine(resultado);
    }


    // Devolvendo resultado na função
    public int Adicionar(int valor1, int valor2)
    {
        var resultado = valor1 + valor2

        return resultado;
        // Console.WriteLine(resultado); o console será chamado na main

        /*OBS:
            também pode fazer apenas:

            return valor1 + valor2;

            pois assim, quando chamar a função na Main, o valor ja será retornado direto, sem precisar salvar numa variável, para só depois retorná-la na Main

        */
    }


    // JEITO SIMPLIFICADO

    public int Adicionar(int valor1, int valor2) => valor1 + valor2; // sem necessidade de declarar a variável resultado e retornar direto.


    // RETORNANDO MAIS DE UM VALOR
    public (int, string) Adicionar(int valor1, int valor2)
    {
        var resultado = valor1 + valor2

        return (resultado, "Nei");
    }


    // NOMEANDO OS VALORES
    public (int resultadoDaAdicao, string autor) Adicionar(int valor1, int valor2)
    {
        var resultado = valor1 + valor2

        return (resultado, "Nei");
    }


    // VALORES OPCIONAIS
    public void Teste(int valor1, int valor2 = 7) // se na Main, eu não informar o valor2, automaticamente será preenchido com valor 7
    {
        Console.WriteLine(valor1 + valor2);
    }
}
