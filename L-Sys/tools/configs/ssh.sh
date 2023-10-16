#!/bin/bash

## Sim, é possível configurar seu computador para que ele possa ser acessado e controlado remotamente via SSH. 
## Isso é útil para administração remota e acesso a sistemas, especialmente em ambientes de servidor ou desenvolvimento. 
## Para configurar seu PC para receber e responder via SSH, siga estas etapas gerais:

#### - Verifique se o SSH está instalado:
# - Verifique se o servidor SSH está instalado no seu sistema. 
# - Em sistemas Linux, ele geralmente já está instalado. 
# - No Windows, você pode usar um aplicativo como o OpenSSH ou o PuTTY.

ssh

### - Habilite o SSH:
# - Se o SSH não estiver habilitado, você precisará ativá-lo. 
# - Isso pode ser feito por meio das configurações do sistema ou da instalação de um servidor SSH. 
# - No Linux, você pode usar o seguinte comando para verificar o status do SSH:

systemctl status ssh

# - Se o SSH não estiver em execução, você pode ativá-lo usando:

sudo systemctl start ssh

# - Certifique-se de habilitar o SSH para iniciar automaticamente na inicialização:

sudo systemctl enable ssh

#### - Configuração de Portas e Acesso:
# - Por padrão, o SSH usa a porta 22. 
# - Certifique-se de que seu roteador ou firewall permita o tráfego na porta 22, 
# - caso contrário, você pode especificar uma porta diferente nas configurações do SSH.
# - Configure as permissões de acesso ao SSH. 
# - Você pode permitir ou restringir o acesso SSH para usuários específicos ou grupos. 
# - Isso é feito editando o arquivo de configuração do SSH, 
# - geralmente localizado em /etc/ssh/sshd_config no Linux.

# - Configuração de Chaves SSH:
# - Para aumentar a segurança, é recomendável configurar a autenticação por chave SSH. Isso envolve a geração de um par de chaves (uma pública e outra privada) e a configuração do servidor SSH para aceitar essas chaves. Você pode gerar um par de chaves SSH com o comando ssh-keygen.

# - Reinicie o Serviço SSH:
# - Após fazer as configurações necessárias, reinicie o serviço SSH para aplicar as alterações:

sudo systemctl restart ssh


#### - Acesso Remoto:
# - Agora, você pode acessar seu PC remotamente usando um cliente SSH, 
# - como o ssh no Linux ou o PuTTY no Windows. 
# - Use o IP ou nome de host do seu PC e a porta SSH configurada para estabelecer uma conexão.
# - Lembre-se de que, ao abrir seu computador para acesso remoto, é importante manter a segurança em mente. 
# - Use senhas fortes, 
# - mantenha seu sistema e software atualizados 
# e siga boas práticas de segurança de rede para evitar acessos não autorizados. 
# - Além disso, certifique-se de compreender as implicações de segurança ao permitir o acesso SSH.