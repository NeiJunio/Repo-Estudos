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

    }
}
