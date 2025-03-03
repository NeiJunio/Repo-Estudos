namespace C-Sharp.CÓDIGOS.looping;

public class Program_continue
{
    static void Main()
    {
        var numero = 1;

        while (numero <= 10)
        {
            if (numero == 5)
            {
                continue;
                numero++;
            }

            numero++;
            Console.WriteLine(numero);
        }
    }
}
