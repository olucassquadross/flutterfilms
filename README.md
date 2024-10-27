Movie App
Aplicativo Flutter que consome a API do The Movie Database (TMDb) para exibir uma lista de filmes populares. O projeto foi desenvolvido em um único arquivo main.dart para simplificar a estrutura.

Funcionalidades
Lista de filmes populares, com exibição do título, imagem do pôster e avaliação.
Consumo da API do TMDb para buscar informações atualizadas sobre filmes.
Tecnologias Utilizadas
Flutter: Framework para desenvolvimento de aplicativos multiplataforma.
Dart: Linguagem de programação usada pelo Flutter.
HTTP Package: Biblioteca Flutter para realizar requisições HTTP.
Pré-requisitos
Flutter: Certifique-se de que o Flutter está instalado em seu sistema.

Para instruções de instalação, consulte: Flutter - Getting Started
Chave de API do TMDb:

Crie uma conta em The Movie Database (TMDb).
Obtenha uma chave de API acessando as configurações da conta e solicitando uma chave na seção API.
Como Configurar o Projeto
Clone o repositório:

bash
Copiar código
git clone https://github.com/seuusuario/movie-app.git
cd movie-app
Instale as dependências: No diretório do projeto, execute o comando:

bash
Copiar código
flutter pub get
Insira sua chave de API:

No arquivo main.dart, substitua 'YOUR_API_KEY' pela sua chave de API do TMDb.
dart
Copiar código
final String apiKey = 'YOUR_API_KEY'; // Substitua com sua chave de API
Como Executar o Projeto
Certifique-se de que todas as dependências foram instaladas:

bash
Copiar código
flutter pub get
Execute o aplicativo:

bash
Copiar código
flutter run
Certifique-se de que o dispositivo em que está rodando o aplicativo tem acesso à internet, pois o aplicativo faz requisições à API do TMDb.

Estrutura do Código
O projeto está em um único arquivo main.dart e é composto das seguintes partes principais:

MyApp: Classe principal que configura o tema do aplicativo e define a tela inicial (HomeScreen).
HomeScreen: Tela principal do aplicativo, que exibe a lista de filmes populares. Utiliza FutureBuilder para buscar e exibir os dados de forma assíncrona.
fetchPopularMovies: Função que faz a requisição HTTP para a API do TMDb, decodifica os dados JSON e os converte em uma lista de objetos Movie.
Movie: Classe de modelo que representa as informações de um filme, incluindo id, title, posterPath e voteAverage.
API Utilizada
Este aplicativo utiliza a API do The Movie Database (TMDb) para obter informações sobre filmes populares. Para mais informações sobre a API, consulte a documentação oficial.

Contribuição
Sinta-se à vontade para abrir Issues ou enviar Pull Requests se quiser sugerir melhorias ou relatar bugs.

