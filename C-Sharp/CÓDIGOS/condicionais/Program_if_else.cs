namespace C-Sharp.CÓDIGOS.condicionais;

public class Program_if_else
{
    static void Main()
    {
        int numero = 7;
        double saldo = 100.50;
        bool ativo = true;
        string autor = "Nei";
        List<int> lista = new List<int> { 1, 7 };
        Cores cor = Cores.Vermelho;

        if (numero > 0)
        {
            Console.WriteLine("É um número Positivo");
        }
        else if (numero == 0)
        {
            Console.WriteLine("É um número Neutro");
        }
        else
        {
            Console.WriteLine("É um número Negativo");
        }


        if (autor.Equals("Nei"))
        {
            Console.WriteLine("O autor é Nei");
        }


        if (cor == Cores.Vermelho && numero >= 0 && ativo)
        {
            Console.WriteLine("Cor vermelha, número positivo e ativo");
        }


        if (cor == Cores.Vermelho || numero > 0)
        {
            Console.WriteLine("Cor vermelha ou número positivo");
        }


        string mensagem = null;

        if (mensagem is null)
        {
            Console.WriteLine("A variável está vazia");
        }

    }
}