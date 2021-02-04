# pc

Candidato: Felipe Marques de Souza Neto 
CPF: 021.815.581-67

## Intro
O projeto se iniciou devido o processo seletivo da Polícia Civil, pude listar como prioridade os seguintes tópicos:
- A Autenticação
- A pesquisa de Albuns junto ao BackEnd
- Apresentação de informações buscadas no BackEnd

## BackEnd
O BackEnd foi feito através do Firebase, uma ferramenta da Google em nuvem que é um backend completo. Neste projeto foi usado o serviço de autenticação e cloud firestore (que seria um banco de dados NoSql, assim como mongoDB).

## FrontEnd
- O FrontEnd foi desenvolvido baseado no SDK Flutter e linguagem de programação Dart.
- O app foi desenvolvido inicialmente somente para dispositivos Android.
- Foi adicionados, além dos padrões, os pacotes:
  - Provider : Que é o gerenciador de estado para apps;
  - cloud_firestore: O pacote para acessar as coleções do banco de dados;
  - firebase_auth: Pacote responsável pela autenticação dos usuários no backend;
  - expansion_card: Pacote de cards que fazem o efeito de expansão, usado na tela do album;
  
 - A tela de login foi concluida com sucesso, ou seja, autenticação está sendo feita de forma correta e com usuários pré cadastrados.
    -Criei um usuário teste para login na plataforma:
      Login: geia.pjc@gmail.com
      Senha: 123456
 - A tela principal basicamente não tem funcionalidade feita, apenas com objetivo de ilustração mesmo.
 - Na barra de menu lateral temos a opção "Ouça Agora", onde leva para uma tela de albums que no caso já traz todos os albuns cadastrados no banco de dados, podendo aplicar um filtro por nome da musica, nome do artista ou nome do album.
 - Na tela do album selecionado propriamente dito, é apresentado as informações(imagem) do album que também está sendo puxada do banco de dados. O card inferior com controles de player de audio é somente ilustrativo e não tem nenhuma funcionalidade por enquanto.
  
 
 
## Como executar/testar a solução ?

1 - Forma de executar a solução:
  - Faça o download do APK e Execute no dispositivo Android
  - Abra o aplicativo e já pode navegar livremente
2 - Forma de executar a solução:
 Caso ocorrar algum problema com a APK, existe uma outra forma um pouco mais complicada de executar o app.
  - Criar a pasta "felipe.neto" dentro da pasta C:\Users\ 
  - Dentro da pasta C:\Users\felipe.neto\ criar a pasta AndroidStudioProjects 
  - Baixar o código do projeto no GIT e descompactar na pasta C:\Users\felipe.neto\AndroidStudioProjects
  - Abri essa pasta (C:\Users\felipe.neto\ criar a pasta AndroidStudioProjects\pc) em sua IDE e executar .
  


## Vídeo do Aplicativo

https://youtu.be/JzQkBoY1m6Y

