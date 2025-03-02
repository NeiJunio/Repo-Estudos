namespace C-Sharp.CÓDIGOS.condicionais;

public class Program_switch
{
    static void Main()
    {
        int dia = 3;

        switch (dia)
        {
            case 1:
                {
                    Console.WriteLine("Domingo");
                }
                break;

            case 2:
                {
                    Console.WriteLine("Segunda-feira");
                }
                break;

            case 3:
                {
                    Console.WriteLine("Terça-feira");
                }
                break;

            case 4:
                {
                    Console.WriteLine("Quarta-feira");
                }
                break;

            case 5:
                {
                    Console.WriteLine("Quinta-feira");
                }
                break;

            case 6:
                {
                    Console.WriteLine("Sexta-feira");
                }
                break;

            case 7:
                {
                    Console.WriteLine("Sábado");
                }
                break;

            default:
                {
                    Console.WriteLine("Dia inválido");
                }
                break;
        }


        // USANDO TERNÁRIO
        int dia = 3;
        string mensagem = "";

        mensagem = dia switch
        {
            1 => "Domingo",
            2 => "Segunda-feira",
            3 => "Terça-feira",
            4 => "Quarta-feira",
            5 => "Quinta-feira",
            6 => "Sexta-feira",
            7 => "Sábado",
            _ => "Dia inválido" // Caso não seja nenhum dos valores anteriores
        };

        Console.WriteLine(mensagem);


        /* Pode usar tanto no switch case normal, quanto com ternário:
                >=
                <=
                >
                <

                ex: 
                case >= 7:
                    {
                        // Bloco de código
                    }

            */
    }
}
