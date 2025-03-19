FROM postgres

# Debconf não interativo
ENV DEBIAN_FRONTEND=noninteractive

# Configurações de ambiente
ENV LANG=pt_BR.UTF-8
ENV LC_ALL=pt_BR.UTF-8
ENV LANGUAGE=pt_BR.UTF-8

RUN apt-get update && apt-get install -y locales tzdata\
 && sed -i '/^# *pt_BR.UTF-8/s/^# //' /etc/locale.gen\
 && locale-gen pt_BR.UTF-8\
 && update-locale LANG=pt_BR.UTF-8\
 && ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime\
 && dpkg-reconfigure -f --noninteractive tzdata

# Limpeza do sistema
RUN apt autoremove -y && apt-get clean -y && apt autoclean -y
