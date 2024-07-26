#!/bin/bash -e

AD_DOMAIN_NAME_SERVER=$(jetpack config adjoin.ad_domain_name_server)
AD_USER_NAME=$(jetpack config adjoin.ad_user)
AD_USER_PASSWORD=$(jetpack config adjoin.ad_user_password)
AD_OU=$(jetpack config adjoin.ad_ou)
AD_DOMAIN=$(jetpack config adjoin.ad_domain)

echo -e $AD_DOMAIN_NAME_SERVER > /etc/resolv.conf
echo $AD_USER_PASSWORD | net ads join -U $AD_USER_NAME createcomputer=$AD_OU createupn=host/$HOSTNAME@$AD_DOMAIN
authconfig --enablemkhomedir --update
systemctl restart sssd