namespace C-Sharp.CÓDIGOS.looping;

public class Program_break
{
    static void Main()
    {
        var numero = 1;

        while (numero < 10)
        {
            if (numero == 5)
            {
                break;
            }

            Console.WriteLine(numero);
            numero++;
        }
    }
}