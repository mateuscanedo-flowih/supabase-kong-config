# ------------------------------------------------------------------------------
# Dockerfile para criar uma imagem Kong personalizada com a configuração Supabase.
# ------------------------------------------------------------------------------

# PASSO 1: Comece com uma imagem oficial e estável do Kong.
# É uma boa prática fixar a versão (ex: 3.7) em vez de usar 'latest' 
# para evitar que atualizações automáticas quebrem sua configuração.
FROM kong:3.7

# PASSO 2: Copie o seu arquivo de configuração personalizado.
# Copia o arquivo 'kong.yml' do seu repositório para o local padrão 
# onde o Kong procura pela configuração declarativa dentro do container.
COPY kong.yml /etc/kong/kong.yml
