variable "location" {
  type = string
  description = "Locacion de los recursos"
}

variable "dns_prefix" {
  type = string
  description = "Valor"
}

variable "agent_count" {
  type = number
  description = "Numero de nodos"
}

variable "aks_service_principal_app_id" {
  type = string
  description = "App id del service principal"
}

variable "aks_service_principal_client_secret" {
  type = string
  description = "client secret"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD5U/5qcqUpIkpVGKIOA1t8+xYdlzw8y1Ex4p6jjm9FMHAwQH37/G+7ULZ+6vW+blxuWnn3vCZ7JFSi+FjBQ9LV8yWdG/13tv0t90g7iZW0vnbyWqJPxa0jL/ZkSYWRAbLIhSpGIdt2QNWGRvZIAVuW4OdWjalLtjoIPhom34z3s48Tr6h9cZThK3I9CPdIk0p+JCIe+ug836EVT23YqM1OurhLWpz4QpVTiA/SGR6i7mO2gZKQAdNmxgFVspZK+hSO8g9eVf1rJFAxXAzVG6p5VzYrmj6Tp8pf3hlt3CZ0PzS9QEOly3OVZy1q7A7LrFyMad3S/UWKas1tS8qfDW0RmSeWmqJUNm3QGvZMqGchg0SvDRUoxDkgDmr6iYQjRl+ktFBKauRJe8xoRtsNqaTNUgM6AWjbVX8omjd+qWjFKlFz6LHWpKFzXr4iA1b2gY+BlM3uwu4okzQhpxN5Q7GmChdQID+eOCfFndD1XTGJA8TKGpJt4CdZDV+4ak/lcZU= hernancerondt@gmail.com"
}