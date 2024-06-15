# Events Manager - Scripts SQL

> ### Status: 🚧 Em construção 🚧

### Descrição
Este repositório contém todos os scripts SQL necessários para a criação, configuração e manipulação do banco de dados do sistema de gerenciamento de eventos. O banco de dados é usado para armazenar informações sobre eventos, organizadores e participantes (attendees).

## Estrutura do Banco de Dados
### O banco de dados é composto pelas seguintes tabelas principais:

- **events:** Armazena informações sobre os eventos, como **nome**, **descrição**, **data**, **local** e o **número máximo de participantes** (attendees).
- **organizers:** Armazena informações sobre os organizadores dos eventos, como **nome**, **e-mail** e **telefone**.
- **attendees:** Armazena informações sobre os participantes dos eventos, como **nome**, **e-mail** e **telefone**.
- **organizers_events:** Tabela de ligação que associa **organizadores aos eventos que eles criaram**.
- **attendees_events:** Tabela de ligação que associa **participantes aos eventos que eles estão inscritos**.
  
# Scripts SQL
**Como Utilizar?**
- **Clone este repositório para sua máquina local.**
  
  ```bash
      git clone https://github.com/devoziel-s/M6-Project-2-DB-Scripts.git
  ```
  ---
- **Importe os scripts SQL no seu ambiente de banco de dados MySQL.**
> #### ℹ️ O arquivo de criação do banco de dados está na pasta **database**

##### Tutorial de como importar um banco de dados no MySQL
  
[Assista ao tutorial no YouTube](https://www.youtube.com/watch?v=016N1WIyKdQ)

---

- Execute os scripts na ordem apropriada para criar, popular e manipular o banco de dados.
# Contribuições

### Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorar o projeto.
