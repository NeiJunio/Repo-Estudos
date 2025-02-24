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
    }
}

/* 
INTEIROS: https://learn.microsoft.com/pt-br/dotnet/csharp/language-reference/builtin-types/integral-numeric-types

PONTOS FLUTUANTES: https://learn.microsoft.com/pt-br/dotnet/csharp/language-reference/builtin-types/floating-point-numeric-types
*/
