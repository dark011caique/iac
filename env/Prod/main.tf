module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "iac-prod"
  ambiente = "prod"
}

output "IP-prod" {
  value = module.aws-prod.IP_publico
}