#!/usr/bin/env zsh
###
## * compare ns1.domain.com  nsOnNuc
#
#SIDE_BY_SIDE="-y"
SIDE_BY_SIDE=""

echo -e "\n\n\n"
echo -e "\e[1;32m==================================================================\e[0m"
echo -e "\e[1;32m==================================================================\e[0m"
###
## ** *.thesym.site ANY
#
echo -e "\n\n\e[1;34m*.thesym.site \e[33mANY\e[0m\n"
colordiff ${SIDE_BY_SIDE} \
  <(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline '*.thesym.site' ANY | sort -k4) \
  <(dig @ns1.domain.com +noall +answer +multiline '*.thesym.site' ANY | sort -k4)


###
## ** mail.thesym.site ANY
#
echo -e "\n\n\e[1;34mmail.thesym.site \e[33mANY\e[0m\n"
colordiff ${SIDE_BY_SIDE} \
  <(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline 'mail.thesym.site' ANY | sort -k4) \
  <(dig @ns1.domain.com +noall +answer +multiline 'mail.thesym.site' ANY | sort -k4)


###
## ** _dmarc.thesym.site TXT
#
echo -e "\n\n\e[1;34m_dmarc.thesym.site \e[33mTXT\e[0m\n"
colordiff ${SIDE_BY_SIDE} \
  <(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline _dmarc.thesym.site TXT | sort -k4) \
  <(dig @ns1.domain.com +noall +answer +multiline _dmarc.thesym.site TXT | sort -k4)


###
## ** dkim._domainkey.thesym.site TXT
#
echo -e "\n\n\e[1;34mdkim._domainkey.thesym.site \e[33mTXT\e[0m\n"
colordiff ${SIDE_BY_SIDE} \
  <(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline dkim._domainkey.thesym.site TXT | sort -k4) \
  <(dig @ns1.domain.com +noall +answer +multiline dkim._domainkey.thesym.site TXT | sort -k4)


###
## ** thesym.site PTR
#
echo -e "\n\n\e[1;34mthesym.site \e[33mPTR\e[0m\n"
colordiff -b ${SIDE_BY_SIDE} \
  <(dig @${KUBE_HOST_EXTERNAL_IP}  +noall +answer -x ${KUBE_HOST_EXTERNAL_IP}) \
  <(echo ${KUBE_HOST_EXTERNAL_IP} | awk -F . '{print $4"."$3"."$2"."$1".in-addr.arpa. 1800 IN PTR thesym.site."}')


###
## ** thesym.site ANY
#
echo -e "\n\n\e[1;34mthesym.site \e[33mANY \e[0m -> SERIAL on SOA will \e[31mdiffer\e[0m\n"
colordiff ${SIDE_BY_SIDE} \
          <(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer  thesym.site ANY | sort -k4) \
          <(dig @ns1.domain.com +noall +answer  thesym.site ANY | sort -k4)
