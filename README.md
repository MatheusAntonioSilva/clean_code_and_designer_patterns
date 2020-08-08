# Código Limpo e Padrões de Projetos

- Projeto voltado para composição de notas na Pós Graudação em Especialização de Desenvolvimento Full Stack, na instituição de ensino Eurípides Soares da Rocha - UNIVEM.

## Código Limpo

- Referente a código limpo trago um conceito muito importante que aprende nos meus primeiros dias como desenvolvedor.

>> "Não desenvolvemos nossos códigos para o cliente ou para nós mesmos. Mas sim para outros desenvolvedores que irão ler nosso código".

- Para isso trouxe um pouco de forma simples de um estudo feito sobre conceito de SOLID para códigos em Ruby, linguagém que já trabalho a mais de 2 anos.

- A Sigla SOLID se você está aqui já conhece o significado, mas para esse README ficar completo bora escreve-lo aqui também.

>> S - Single Responsibility Principle (Princípio da Responsabilidade Única)
>> O - Open/Closed Principle (Princípio do Aberto/Fechado)
>> L - Liskov Substitution Principle (Princípio da Substituição de Liskov)
>> I - Interface Segregation Principle (Princípio da Segregação de Interfaces)
>> D - Dependency Inversion Principle (Princípio da Inversão de Dependências)

- Agora vamos de código:

  * Single Responsibility Principle
    * Violação do príncipio:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/simple_responsibility/correct.rb
      - Neste exemplo o príncipio está sendo violado pois a classe `FinancialReportMailer` está tanto gerando o relatório para enviar por email, quanto tanto realizando processo de envio de e-mail. Sendo assim está classe não tem uma responsabilidade única, o que viola o **Single Responsibility Principle**

    * Maneira correta:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/simple_responsibility/correct.rb
      - Aqui a forma está correta pois separamos a classe em duas, onde á `FinancialReportMailer` é resposável apenas pelo envio de e-mail e a `FinancialReportGenerator` é responsável apenas por gerar o relatório.

  * Open/Closed Principle
    * Violação do príncipio:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/open_closed/violation.rb
      - Nesta classe violamos o príncipio porque toda vez que um desenvolvedor precisar enviar dados de log para uma conta diferente, ele terá que sobrescrever toda essa classe, sendo assim não deixando a mesma **fechada** para alteração e não podendo ser estendida para enviar para um novo usuários os logs.

    * Maneira correta:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/open_closed/correct.rb
      - Já neste código o desenvolvedor pode apenas adicionar os dados que sua classe nessecita usar no `initiallize` e o comportamento usado para enviar e-mail registrar logs não precisará ser modificado. Sendo assim estamos aberto a extensão e fechados para alteração de comportamento.

  * Liskov Substitution Principle
    * Violação do príncipio:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/liskov/violation.rb
      - Na violação dese príncipio o correto que o método `post` da classe `AdminStatistic`, não está retornando o mesmo tipo de dados semelhante a sua classe pai.

    * Maneira correta:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/liskov/correct.rb
      - Se refatorarmos esse código, podemos adicionar um método para formatações dos `posts` mas o método `posts` ainda retornará o mesmo tipo de dado da sua classe pai.

  * Interface Segregation Principle
    * Violação do príncipio:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/interface_seggregation/violation.rb
      - Neste príncipio temos a violação quebrada, pois nem todos os métodos contidos na interface `CoffeeMachineInterface` a classe `Person` e `Staff` estarão usando. Sendo assim violamos o príncipio de segregação de interfaces.

    * Maneira correta:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/interface_seggregation/correct.rb
      - Refatorando esse código, podemos criar duas interfaces diferentes, com serviços diferentes que serão usados por pessoas e equipes. Nessas duas novas interfaces, terão todos os seus métodos usados de forma segregada pela classe `Person` e `Staff`.

  * Dependency Inversion Principle
    * Violação do príncipio:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/dependency_inversion/violation.rb
      - Aqui violamos o príncipio pois da forma que implementamos a classe `Printer`, temos a possibilidade de a classe `PdfFormater` e `HtmlFormater` tenha logicas utilizadas para implementação de outras classes o que pode impactar no comportamento da classe `Printer`

    * Maneira correta:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/solid/dependency_inversion/correct.rb
      - Da forma que implementamos agora, podemos separar a nossa clase `Printer` da dependendo diretamente da logica que está sendo implentada nas camadas abaixo. Sendo assim se for necessário podemos mudar facilmente a lógica da classe `Printer`

## Padrões de Projeto

- Vamos agora ver a parte de **Design Patterns** no português padrões de projetos. Padrões esses criados para auxilar desenvolvedores com formas de resolver problemas em desenvolvimento de forma semelhante.

- Infelizmente não dá pra trazer todos os padrões porém trouxe um padrão de criação, um padrão de estrutural e um comportamental.

- Agora vamos de código:

  - Behavioral Patterns:
    - **Template Method**:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/patterns/behavioral/template_method.rb

  - Creational Patterns:
    - **Factory Method**:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/patterns/creational/factory_method.rb

  - Structural Patterns:
    - **Decorator Method**:
      - https://github.com/MatheusAntonioSilva/clean_code_and_designer_patterns/blob/master/patterns/structural/decorator.rb

## Referências

- https://nandovieira.com.br/ruby-object-model-singleton-class
- https://refactoring.guru/pt-br/design-patterns/template-method/ruby/example
- http://lccezinha.github.io/ruby/design-patterns/2015/04/09/factory-e-abstract-factory-em-ruby.html
- https://nandovieira.com.br/ruby-object-model-singleton-class
