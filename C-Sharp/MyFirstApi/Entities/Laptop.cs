namespace MyFirstApi.Entities;

public sealed class Laptop : Device // a palavra sealed serve para impedir que a classe Laptop seja uma classe base para outra classe (impede que outra classe tenha herança com a classe Laptop)
{
    public override string GetBrand()
    {
        return "Apple";
    }

    public override string Hello() // acesando a função virtual Hello(), e sobrescrevendo sua saída
    {
        return "Olá, mundo!";
    }

    public string GetModel()
    {
        var isConnected = IsConnected();
        if (isConnected)
            return "MacBook";

        return "Unknow";
    }
}
