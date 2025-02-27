
namespace C-Sharp.estruturas.tiposDeDados; 

public class Program2
{
    static void Main()
    {
        DateOnly dia = new DateOnly(2025, 2, 25); // DateOnly é somente data

        string diaEmTextoToShort = dia.ToShortDateString(); // saída: 25-2-2025 
        string diaEmTextoToLong = dia.ToLongDateString(); // saída: Segunda-Feria, 02 de fevereiro de 2025 

        string diaEmTexto = dia.ToString(new CultureInfo("pt-BR")); // traduzindo a data para português-BR  --> saída: 25/02/2025

        Console.WriteLine(diaEmTexto);


        @*----------------------------------------------------------------------------------*@
        DateTime dia = new DateTime(2008, 6, 15, 21, 15, 07); // DataTime é  data e hora

        string formatoPadrao = dia.ToString(new CultureInfo("pt-BR")); // saída: 15/06/2008
        Console.WriteLine(formatoPadrao);

        string formatoCurto = dia.ToString("d", new CultureInfo("pt-BR")); // saída: 15/06/2008
        Console.WriteLine(formatoCurto);

        string formatoLongo = dia.ToString("D", new CultureInfo("pt-BR")); // saída: domingo, 15 de junho de 2008
        Console.WriteLine(formatoLongo);

        string formatoDataHoraCurta = dia.ToString("f", new CultureInfo("pt-BR")); // saída: domingo, 15 de junho de 2008 21:15
        Console.WriteLine(formatoDataHoraCurta);

        string formatoDataHoraLonga = dia.ToString("F", new CultureInfo("pt-BR")); // saída: domingo, 15 de junho de 2008 21:15:07
        Console.WriteLine(formatoDataHoraLonga);

        string formatoDataHoraCompacta = dia.ToString("g", new CultureInfo("pt-BR")); // saída: 15/06/2008 21:15
        Console.WriteLine(formatoDataHoraCompacta);

        string formatoDataHoraCompleta = dia.ToString("G", new CultureInfo("pt-BR")); // saída: 15/06/2008 21:15:07
        Console.WriteLine(formatoDataHoraCompleta);

        string formatoMesDia = dia.ToString("m", new CultureInfo("pt-BR")); // saída: 15 de junho
        Console.WriteLine(formatoMesDia);

        string formatoISO8601 = dia.ToString("o", new CultureInfo("pt-BR")); // saída: 2008-06-15T21:15:07.0000000
        Console.WriteLine(formatoISO8601);

        string formatoRFC1123 = dia.ToString("R", new CultureInfo("pt-BR")); // saída: dom, 15 jun 2008 21:15:07 GMT
        Console.WriteLine(formatoRFC1123);

        string formatoAnoMes = dia.ToString("y", new CultureInfo("pt-BR")); // saída: junho de 2008
        Console.WriteLine(formatoAnoMes);

        string formatoHoraCurta = dia.ToString("t", new CultureInfo("pt-BR")); // saída: 21:15
        Console.WriteLine(formatoHoraCurta);

        string formatoHoraLonga = dia.ToString("T", new CultureInfo("pt-BR")); // saída: 21:15:07
        Console.WriteLine(formatoHoraLonga);

        string formatoUniversal = dia.ToString("u", new CultureInfo("pt-BR")); // saída: 2008-06-15 21:15:07Z
        Console.WriteLine(formatoUniversal);

        string formatoUniversalCompleto = dia.ToString("U", new CultureInfo("pt-BR")); // saída: segunda-feira, 16 de junho de 2008 00:15:07
        Console.WriteLine(formatoUniversalCompleto);

        Console.WriteLine();

        string formatoPersonalizado1 = dia.ToString("h:mm:ss.ff t", new CultureInfo("pt-BR")); // saída: 9:15:07.00 P
        Console.WriteLine(formatoPersonalizado1);

        string formatoPersonalizado2 = dia.ToString("d MMM yyyy", new CultureInfo("pt-BR")); // saída: 15 jun 2008
        Console.WriteLine(formatoPersonalizado2);

        string formatoPersonalizado3 = dia.ToString("HH:mm:ss.f", new CultureInfo("pt-BR")); // saída: 21:15:07.0
        Console.WriteLine(formatoPersonalizado3);

        string formatoPersonalizado4 = dia.ToString("dd MMM HH:mm:ss", new CultureInfo("pt-BR")); // saída: 15 jun 21:15:07
        Console.WriteLine(formatoPersonalizado4);

        string formatoPersonalizado5 = dia.ToString(@"\Mês\: M", new CultureInfo("pt-BR")); // saída: Mês: 6
        Console.WriteLine(formatoPersonalizado5);

        string formatoPersonalizado6 = dia.ToString("HH:mm:ss.ffffzzz", new CultureInfo("pt-BR")); // saída: 21:15:07.0000-03:00
        Console.WriteLine(formatoPersonalizado6);


        @*----------------------------------------------------------------------------------*@
        DateTime hoje = DateTime.Now(); // Captura o dia e hora de hoje (no momento da execução)

        DateTime hoje = DateTime.UtcNow(); // Captura o dia e hora de hoje (captura um horário universal)

        DateTime hoje = DateTime.Today(); // Captura o dia de hoje (no momento da execução)

        DateTime dataAtual = DateTime.Now;

        DateTime novaData1 = dataAtual.AddDays(10);           // Adiciona 10 dias
        DateTime novaData2 = dataAtual.AddHours(5);           // Adiciona 5 horas
        DateTime novaData3 = dataAtual.AddMicroseconds(500);  // Adiciona 500 microssegundos (C# 8.0+)
        DateTime novaData4 = dataAtual.AddMilliseconds(500);  // Adiciona 500 milissegundos
        DateTime novaData5 = dataAtual.AddMinutes(30);        // Adiciona 30 minutos
        DateTime novaData6 = dataAtual.AddMonths(2);          // Adiciona 2 meses
        DateTime novaData7 = dataAtual.AddSeconds(15);        // Adiciona 15 segundos
        DateTime novaData8 = dataAtual.AddTicks(1000000);     // Adiciona 1.000.000 de ticks (1 tick = 100 nanossegundos)
        DateTime novaData9 = dataAtual.AddYears(1);           // Adiciona 1 ano


    }
}