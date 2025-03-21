# Estudos_&_Anotações
Repósitório para estudos, anotações e testes 

## PETFOLIO

<details>
  <summary style="font-size: 18px;">1. Estrutura Inicial do Projeto</summary>
  
  ### Criação de uma solução:
  - Abra o Visual Studio e crie uma nova solução vazia:
  - File > New > Project > Blank Solution
  - Nomeie a solução como Petfolio.
  
  ### Adição dos projetos:
  - **Projeto API (Web API):**
    - Botão direito na solução Petfolio > Add > New Project > ASP.NET Core Web API.
    - Nomeie o projeto como Petfolio.API.
  - **Projeto Communication (para Requests e Responses):**
    - Botão direito na solução Petfolio > Add > New Project > Class Library.
    - Nomeie o projeto como Petfolio.Communication.
  - **Projeto Application (para a regra de negócios):**
    - Botão direito na solução Petfolio > Add > New Project > Class Library.
    - Nomeie o projeto como Petfolio.Application.
  </details>

<details>
  <summary>2. Configuração dos Projetos</summary>
  
  ### Definir o projeto API como startup:
  - Botão direito no projeto Petfolio.API > Set as Startup Project.
  
  ### Referências entre os projetos:
  - **Petfolio.API:**
    - Adicione referência para Petfolio.Communication e Petfolio.Application.
  - **Petfolio.Application:**
    - Adicione referência para Petfolio.Communication.
  - **Petfolio.Communication:**
    - Não precisa referenciar nenhum outro projeto.
  
  ### Criar o PetController:
  - Na pasta Controllers do Petfolio.API, crie o arquivo `PetController.cs`.
</details>

<details>
  <summary>3. Estrutura do Projeto Communication</summary>
  
  ### Criar as pastas Requests e Responses
  
  #### Estrutura e arquivos da pasta Request:
  - Crie uma pasta chamada Requests
  - Criar a classe `RequestPetJson.cs`:
    ```csharp
    public class RequestPetJson
    {
        public string Name { get; set; }
        public DateTime Birthday { get; set; }
        public PetType Type { get; set; }
    }
    ```

  #### Estrutura e arquivos da pasta Request:
  - Crie uma pasta chamada Responses
  - Criar a classe ResponseRegisterPetJson:
</details>