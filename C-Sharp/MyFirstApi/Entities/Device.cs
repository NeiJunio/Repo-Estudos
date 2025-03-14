namespace MyFirstApi.Entities;

public abstract class Device // impede criar instãncias a partir dessa classe
{
    protected bool IsConnected() => true;

    public abstract string GetBrand(); // Obriga todas as classes abstratas a implementarem essa função

    public virtual string Hello() // A palavra virtual serve para permitir que as classes derivadas (por herança) tem poder de sobrescrever o método (nesse caso, pode retornar outro texto por exemplo)
    {
        return "Hello World";
    }
}

// se uma função ou classe for declarada abstrata, obrigatoriamente a classe deverá ser abstrata, mas se a classe abstrata, não necessariamente a função ou o método precisa ser