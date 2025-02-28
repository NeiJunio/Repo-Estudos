using System.Text; // para usar a String.Builder

namespace C-Sharp.estruturas.tiposDeDados; 

public class Program
{
    static void Main()
    {
        // INTEIROS
        // sintaxe: tipo_de_dado nome_da_variável = valor;
        int numero = 7;
        long numeroLong = 7;
        uint numeroUInt = 7  // unit só aceita números inteiros positivos
        sbyte numeroSbyte = 127;
        int numeroUnderline = 1_000;


        // PONTOS FLUTUANTES
        // sintaxe: tipo_de_dado nome_da_variável = valor;
        float numeroFloat = 7.15f;
        double numeroDouble = 7.15;
        decimal numeroDecimal = 7.15m;


        // BOOLEANOS
        bool verdadeiro = true;
        bool falso = false;


        // CHAR
        char caracter = 'a';

        // STRING
        string texto = "Hello World!";

        char primeiraLetraDoTexto = texto[0];
        Console.WriteLine(primeiraLetraDoTexto); // vai imprimir H

        string meuNome = "         Nei           ";
        string nomeFormatado = meuNome.Trim(); // remove os espaços em branco do inicio e fim, e devolve uma nova string

        Console.WriteLine(meuNome); // vai imprimir           Nei          ;
        Console.WriteLine(nomeFormatado); // vai imprimir Nei;


        bool comecaComALetraN = nomeFormatado.StartWith("N");
        Console.WriteLine(comecaComALetraN); // vai imprimir True


        bool terminaComALetraI = nomeFormatado.EndsWith("i");
        Console.WriteLine(terminaComALetraI); // vai imprimir True


        string substituindoCaracterComReplace = nomeFormatado.Replace("ei", "EI");
        Console.WriteLine(substituindoCaracterComReplace); // vai imprimir NEI;


        string textoTeste = "Olá, mundo";
        bool existe = textoTeste.Contains("mundo");
        Console.WriteLine(existe); // vai imprimir True


        string textoTeste2 = "Olá, mundo";
        bool existe2 = textoTeste2.Equals("mundo");
        Console.WriteLine(existe2); // vai imprimir False, pois não é 100% igual


        // CONCATENÇÃO DE STRINGS
        string texto1 = "a primeira frase";
        string texto2 = "e a segunda frase";

        string concatenado = texto1 + " " + texto2;
        Console.WriteLine(concatenado); // vai imprimir a primeira frase e a segunda frase;

        string concatenadoComInterpolacao = $"{texto1} {texto2}";


        // STRINGBUILDER
        String.Builder stringBuilder = new string.Builder();
        stringBuilder.Append(texto1);
        stringBuilder.Append(texto2);

        string resultadoStringBuilder = stringBuilder.ToString();

        Console.WriteLine(resultadoStringBuilder); // vai imprimir "a primeira frase e a segunda frase";


        // STRINGS COM PARÂMETROS
        string textoComParametro = "O usuário {0} gosta de {1}";
        string resultadoStringComParametro = string.Format(textoComParametro, "Nei", "estudar")
        Console.WriteLine(resultadoStringComParametro); // vai imprimir "O usuário Nei gosta de estudar"



        // EVITANDO PROBLEMAS COM BARRA
        string caminho = "C:\teste"; // \t representa um tab, então não vai imprimir corretamente
        string caminho = "C:\\teste";
        string caminho = @"C:\teste";
    }
}

/* 
INTEIROS: https://learn.microsoft.com/pt-br/dotnet/csharp/language-reference/builtin-types/integral-numeric-types

PONTOS FLUTUANTES: https://learn.microsoft.com/pt-br/dotnet/csharp/language-reference/builtin-types/floating-point-numeric-types
*/
