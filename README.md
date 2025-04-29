# 🧪 Robot Framework Test Suite

Bem-vindo ao repositório de **Testes Automatizados** utilizando o **Robot Framework**. Este projeto é composto por testes em três áreas principais:

1. **Front-end (UI)**: Testes automatizados para validar a interface do usuário.
2. **API**: Testes para garantir que as APIs estejam funcionando corretamente.
3. **Back-end (Database)**: Testes para verificar a integridade e a consistência do banco de dados.

## 🚀 Como Configurar o Ambiente

Antes de rodar os testes, você precisará configurar o ambiente corretamente. Aqui estão os passos para garantir que tudo funcione:

### 1. **Instalar as dependências**

Certifique-se de ter o **Python** instalado no seu ambiente. Caso ainda não tenha, siga a [documentação oficial do Python](https://www.python.org/downloads/) para instalá-lo.

Após instalar o Python, use o `pip` para instalar o **Robot Framework** e as bibliotecas necessárias.
`pip install robotframework selenium requests`
`pip install robotframework-databaselibrary`
> > **Selenium:** Usado para interagir com o navegador e testar a interface de usuário
**Requests:** Usado para enviar requisições HTTP e validar as respostas das APIs.
**DatabaseLibrary:** Usado para conectar e validar dados no banco de dados.

### 2. Instalar o WebDriver
Se você for rodar testes de Front-end (UI) com o Selenium, você precisará de um WebDriver, como o Chromedriver, para o Google Chrome ou o Geckodriver para o Firefox.
Depois de baixar o driver, adicione-o ao seu PATH para que o Robot Framework consiga localizá-lo.

## 🧪 Como Rodar os Testes
Após instalar as dependências e configurar o ambiente, você pode rodar os testes.

##### 1. Rodar todos os testes
Para rodar todos os testes de uma vez (Front-end, API e Back-end):
robot -d results tests/
Isso executará todos os testes na pasta tests/ e armazenará os resultados na pasta results/.

##### 2. Rodar testes específicos
Se você quiser rodar apenas um conjunto específico de testes, como os testes de Front-end, use o seguinte comando:
robot tests/front-end/test_front_end.robot

Da mesma forma, para rodar os testes de API:
robot tests/api/test_api.robot

E para os testes de Back-end:
robot tests/back-end/test_backend.robot

## 🛠️ Estrutura do Projeto
A estrutura do projeto foi organizada para facilitar o entendimento e a manutenção dos testes. Abaixo está uma explicação de cada pasta e seu conteúdo:

├── tests/
│   ├── front-end/
│   │   └── test_front_end.robot       # Testes de Front-end (UI)
│   ├── api/
│   │   └── test_api.robot            # Testes de API
│   └── back-end/
│       └── test_backend.robot        # Testes de Back-end (Banco de Dados)
│
├── resources/
│   ├── front-end/
│   │   └── front_end_keywords.robot  # Palavras-chave reutilizáveis para Front-end
│   ├── api/
│   │   └── api_keywords.robot       # Palavras-chave reutilizáveis para API
│   └── back-end/
│       └── backend_keywords.robot   # Palavras-chave reutilizáveis para Back-end
│
├── results/                          # Resultado dos testes
├── README.md                         # Este arquivo


**Descrição das pastas:**
**tests/:** Contém os arquivos de teste. Cada tipo de teste (Front-end, API, Back-end) tem sua própria pasta.
**resources/:** Contém palavras-chave reutilizáveis, que podem ser usadas em diferentes testes.
**results/: **Onde os resultados dos testes são armazenados, incluindo logs, arquivos HTML e relatórios em XML.

## 🧑‍💻 Detalhamento dos Testes
Aqui está uma descrição detalhada sobre como cada tipo de teste funciona:

###### 1. Testes de Front-end (UI)
Objetivo: Validar a funcionalidade da interface do usuário em navegadores.
O que foi utilizado:
SeleniumLibrary: Para controlar o navegador e interagir com a página.
Google Chrome: Navegador utilizado para realizar os testes (é necessário o Chromedriver).

*Exemplo de teste:*

*** Test Cases ***
	Open Website and Verify Title
 	Open Browser    ${URL}    Chrome
    	Title Should Be    Example Domain
   	 Close Browser
Este teste abre o navegador, acessa uma URL, verifica o título da página e fecha o navegador.

###### 2. Testes de API
Objetivo: Validar o funcionamento de APIs RESTful.
O que foi utilizado:
RequestsLibrary: Para enviar requisições HTTP e verificar as respostas.

Exemplo de teste:

*** Test Cases ***
GET Request to Posts
    ${response}=    GET    ${BASE_URL}/posts
    Should Be Equal As Numbers    ${response.status_code}    200
    Should Contain    ${response.text}    "userId"
Este teste envia uma requisição GET para a API e valida que o status da resposta é 200 e que o corpo da resposta contém a chave "userId".

###### 3. Testes de Back-end (Banco de Dados)
Objetivo: Validar a integridade e consistência dos dados no banco de dados.
O que foi utilizado:
DatabaseLibrary: Para conectar e executar queries no banco de dados.

Exemplo de teste:

*** Test Cases ***
Check User Data in Database
    Connect To Database    pymysql    ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}
    ${query}=    SELECT * FROM users WHERE id=1;
    ${result}=    Execute SQL    ${query}
    Should Not Be Empty    ${result}
    Disconnect From Database
Este teste conecta-se ao banco de dados e executa uma query para verificar se existe um usuário com ID 1 na tabela users.

## 📝 Resultados dos Testes
Os resultados dos testes serão armazenados na pasta results/ em formato HTML e XML. O Robot Framework gera automaticamente um relatório e um log de cada execução de teste.

Exemplos de arquivos gerados:
results/robot-output.xml: Arquivo XML com os resultados detalhados.

results/robot-log.html: Relatório interativo com detalhes dos testes.

results/robot-report.html: Relatório com um resumo dos testes.

## 🎯 Contribuindo
Se você deseja contribuir para este projeto, fique à vontade para fazer um fork e enviar um pull request com melhorias ou correções!

## 📄 Licença
Este projeto está sob a MIT License.

## 💡 Dicas
Lembre-se de verificar sempre os logs gerados após cada execução de teste para identificar problemas de forma eficaz.

Utilize os arquivos de palavras-chave (keywords) para melhorar a reutilização de código entre diferentes testes.

## 📬 Contato 
Feito com carinho por Fernanda Fittipaldi Santos. 
Quer bater um papo técnico ou discutir ideias de automação? 
Me chama! 🚀 [LinkedIn](https://www.linkedin.com/in/fefitti/ "LinkedIn") |[ Portfólio de Bots](https://sites.google.com/view/botbrisado/home " Portfólio de Bots")

### 🔥 Bora Automatizar o Mundo! 🔥

