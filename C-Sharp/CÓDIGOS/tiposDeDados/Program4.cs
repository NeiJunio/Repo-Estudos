namespace C-Sharp.estruturas.tiposDeDados;

public class Program4
{
    static void Main()
    {
        // ARRAYS
        // sintaxe: tipo_de_dado[] nome_do_array = new tipo_de_dado[tamanho];
        int[] inteiros = new int[10]; // marcação para identificar array é [] e iniciá-lo com 10 posições

        inteiros[0] = 1; // Define o valor 1 para a primeira posição

        Console.WriteLine(inteiros[0]); // saída: 1

        int[] arrayDefinido = [1, 2, 3]; // Inicia o array já om os valores definidos, ou seja, ele só terá 3 posições, e estas serão ocupados diretamente por esses números


        // ARRAYS JUNTOS
        // sintaxe: tipo_de_dado[,] nome_do_array = new tipo_de_dado[linhas, colunas];
        int[,] matriz = new int[3, 2]; // marcação para identificar array é [,] e iniciá-lo com 3 linhas e 2 colunas
        int[,,] matriz = new int[3, 3, 3];  // 3 linhas, 3 colunas e 3 posições de profundidade

        matriz[0, 0, 0] = 1; // Define o valor 1 para a primeira posição localizada na linha 1, coluna 1, profundidade 1;

        matriz[0, 4] = 2 // Define o valor 2 na posição linha 0, coluna 4


        // LIST
        // sintaxe: List<tipo_de_dado> nome_da_lista = new List<tipo_de_dado>();
        List<int> numeros = new List<int>();

        numeros.Add(1); // Adiciona o valor 1 ao final da lista
        numeros.Remove(1); // Remove o valor 1 da lista
        numeros.First(); // Seleciona o primeiro elemento
        numeros.Last(); // Seleciona o último elemento
        numeros.ElementAt(2) // Seleciona o elemento da posição 2
        numeros.RemoveAt(2) // Remove o valor da posição 2
        numeros.Clear(); // Remove todos os elementos da lista de uma vez



        List<string> strings = new List<string>();

        strings.Add("Hello"); // Adiciona o valor "Hello" ao final da lista
        strings.Remove("Hello"); // Remove o valor "Hello" da lista
        strings.First(); // Seleciona o primeiro elemento
        strings.Last(); // Seleciona o último elemento
        strings.ElementAt(0) // Seleciona o elemento da posição 0
        strings.RemoveAt(0) // Remove o valor da posição 0
        strings.Clear(); // Remove todos os elementos da lista de uma vez

        strings.resultado = strings.Join(" ", strings) // sintaxe (separados, coleção)


        List<decimal> decimals = new List<decimal>();
        decimals.Add(1.23M); // Adiciona o valor 1.23 ao final da lista

        List<bool> bools = new List<bool>();
        bools.Add(true); // Adiciona o valor true ao final da lista


        List<object> objetos = new List<object>();
        objetos.Add("Hello"); // Adiciona o valor "Hello" ao final da lista
        objetos.Add(1); // Adiciona o valor 1 ao final da lista
        objetos.Add(true); // Adiciona o valor true ao final da lista


        // DICTIONARY
        // sintaxe: Dictionary<chave, valor> nome_do_dicionario = new Dictionary<chave, valor>();
        Dictionary<int, string> nomesNumeros = new Dictionary<int, string>();
        nomesNumeros.Add(1, "Um"); // Adiciona o par chave-valor ao dicionário

        string value = nomesNumeros[1]; // informa a chave (converte o valor da chave para uma string)
        Console.WriteLine(value); // saída: Um

        bool existe = nomesNumeros,ContainsKey
        ["Dois"];
        Console.WriteLine(existe); // saída: False


        // HASHSET
        // sintaxe: HashSet<tipo_de_dado> nome_do_conjunto = new HashSet<tipo_de_dado>();
        HashSet<int> numerosUnicos = new HashSet<int>();
        numerosUnicos.Add(1); // Adiciona o valor 1 ao conjunto
        numerosUnicos.Add(2); // Adiciona o valor 2 ao conjunto
        numerosUnicos.Add(1); // Adiciona o valor 1 ao conjunto

        Console.WriteLine(numerosUnicos.Count); // saída: 2 (ignora o número 1 repetido)
    }
}
