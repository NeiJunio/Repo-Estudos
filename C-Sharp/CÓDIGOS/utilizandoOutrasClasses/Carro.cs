namespace C-Sharp.estruturas.utilizandoOutrasClasses.

class Carro
{
    public void Ligar()
    {
        Console.WriteLine("Carro LIGADO");
    }

    public void Desligar()
    {
        Console.WriteLine("Carro DESLIGADO");
    }

    private void TestePrivate()
    {
        Console.WriteLine("Carro DESLIGADO");
    }

    internal void TesteInternal()
    {
        Console.WriteLine("Carro DESLIGADO");
    }


}

/* 
    a palavra PUBLIC serve para deixar a função acessível para outras classes, nesse caso, a classe program (do arquivo Program) pode acessar as funções que estão dentro da classe Carro
*/

/*
    MODIFICADORES DE ACESSO:
    as funções Ligar e Desligar estão acessíveis dentro da classe Main, no arquivo Program.cs, pois aqui elas estão definidas como public, ou seja, públicas

    a função TestePrivate não é acessível, pois ela está definida como private, ou seja, privada, podem ser acessada somente pela classe Carro

    a função TesteInternal só é acessível se ela estiver dentro do mesmo project, ou seja, o classe Program.cs e a classe Carro.cs devem estar dentro do mesmo projeto.
*/