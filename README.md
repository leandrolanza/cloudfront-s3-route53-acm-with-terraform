# cloudfront-s3-route53-acm-with-terraform

Esse projeto cria uma hospedagem completa para site estático, para criação dessa hospedagem vamos usar os seguintes recursos da AWS:

- Cloudfront
- S3
- ACM
- Route 53

### Estrutura de diretório

### Explicando os módulos

### Configurações iniciais do terraform

### Validando as alterações

Para validar as alterações que serão aplicadas, basta executar o comando abaixo:

> terraform plan

Obs: Lembrando que para executar os comandos do terraform corretamente, temos que estar dentro do diretório do projeto `/production`

### Aplicando as alterações

Após validação com o comando `plan` é o momento de criar todos os recursos desse projeto, para isso execute o comando abaixo:

> terraform apply

### Removendo as configurações

Para remover toda a instalação realizada no ambiente AWS, basta executar o comando:

> terraform destroy

### Referências

Aprenda sobre [Terraform](https://learn.hashicorp.com/terraform)

Veja mais sobre [cloudfront](https://aws.amazon.com/pt/cloudfront/)

Veja mais sobre [S3](https://aws.amazon.com/pt/s3/)

Veja mais sobre [ACM](https://aws.amazon.com/certificate-manager/)

Veja mais sobre [route53](https://aws.amazon.com/route53/)