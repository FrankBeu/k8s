#!/usr/bin/env zsh
#
#
###
## * compare ns1.domain.com  nsOnNuc
#
###
## ** thesym.site ANY
#
echo -e "\n\n\e[1;34mthesym.site \e[33mANY\e[0m\n"
colordiff -y \
	<(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer  thesym.site ANY | sort -k4) \
	<(dig @ns1.domain.com +noall +answer  thesym.site ANY | sort -k4)


echo -e "\n\n\e[1;34m*.thesym.site \e[33mANY\e[0m\n"
colordiff -y \
	<(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline '*.thesym.site' ANY | sort -k4) \
	<(dig @ns1.domain.com +noall +answer +multiline '*.thesym.site' ANY | sort -k4)


echo -e "\n\n\e[1;34mmail.thesym.site \e[33mANY\e[0m\n"
colordiff -y \
	<(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline 'mail.thesym.site' ANY | sort -k4) \
	<(dig @ns1.domain.com +noall +answer +multiline 'mail.thesym.site' ANY | sort -k4)


echo -e "\n\n\e[1;34m_dmarc.thesym.site \e[33mTXT\e[0m\n"
colordiff -y \
	<(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline _dmarc.thesym.site TXT | sort -k4) \
	<(dig @ns1.domain.com +noall +answer +multiline _dmarc.thesym.site TXT | sort -k4)


echo -e "\n\n\e[1;34mdkim._domainkey.thesym.site \e[33mTXT\e[0m\n"
colordiff -y \
	<(dig @${KUBE_HOST_EXTERNAL_IP} +noall +answer +multiline dkim._domainkey.thesym.site TXT | sort -k4) \
	<(dig @ns1.domain.com +noall +answer +multiline dkim._domainkey.thesym.site TXT | sort -k4)
