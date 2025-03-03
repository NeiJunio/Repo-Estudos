namespace Testes;

class Program_foreach
{
    static void Main()
    {
        var lista = new List<string> { "Nei", "Junio", "Teste" };

        foreach (var item in lista)
        {
            Console.WriteLine(item);
        }


        var dicionario = new Dictionary<string, string>();

        dicionario.Add("Nome1", "Teste1");
        dicionario.Add("Nome2", "Teste2");
        dicionario.Add("Nome3", "Teste3");
        dicionario.Add("Nome4", "Teste4");

        foreach (var item in dicionario)
        {
            Console.WriteLine(item.Key); // Mostrando somente as chaves
            Console.WriteLine(item.Value); // mostrando somente os valores
        }
    }
}