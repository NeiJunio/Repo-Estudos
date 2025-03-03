namespace C-Sharp.CÓDIGOS.looping;

    public class Program_return
{
    static void Main()
    {
        var numero = 1;

        while (numero < 10)
        {
            if (numero == 5)
            {
                continue;
            }

            Console.WriteLine(numero);
            numero++;
        }

        Console.WriteLine("Loop finalizado");
    }

    static void Teste(int numero)
    {
        if (numero == 5)
        {
            return;
        }
    }
}
