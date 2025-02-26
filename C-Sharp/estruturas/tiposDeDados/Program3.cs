namespace C-Sharp.estruturas.tiposDeDados;

public class Program3
{
    enum NivelDeDificuldade
    {
        Baixo,
        Medio,
        Alto

        /* Pode definir números para as opções. EX:
            Baixo = 0,
            Medio = 1,
            Alto = 2
        */
    }

    static void Main()
    {
        // ENUM

        NivelDeDificuldade nivel = NivelDeDificuldade.Alto;

        int nivelInteiro = (int)nivel;

        Console.WriteLine(nivel);  // saída: Alto
        Console.WriteLine(nivelInteiro); // saída: 2


        // VAR
        var variavel = "Hello World!"; // O próprio compilador vai analisar e inferir qual o tipo de dado, se string, bool ou int por exemplo

        var nome = "Nei"; // CERTO
        var nome; // ERRADO (precisa ter uma igualdade)
        string nome = "Nei"; // CERTO


        // NULL
        int idade = 18;
        int? idade = null; // se tiver valor, a variável idade será do tipo inteiro, se não, será nula [a interrogação lembra o operador ternário do Js]
    }
}
