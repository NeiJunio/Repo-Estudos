using C-Sharp.estruturas.utilizandoOutrasClasses.testeUsandoOutroNamespace; // para acessar a classe Biscoito que está em outro Namespace, tem que fazer o using direcionando para o Namespace no qual a classe se encontra

namespace C-Sharp.estruturas.utilizandoOutrasClasses

class Program
{
    static void Main()
    {
        Carro meuCarro = new Carro(); // Estou criando um objeto do tipo Carro e salvando ele na variável meuCarro

        meuCarro.Ligar();

        meuCarro.Desligar();

        Biscoito meuBiscoito = new Biscoito();
    }
}
