title=Zmena hostnamu v linuxe
date=2020-04-19
type=post
tags=blog,linux
status=published
~~~~~~

Zmeniť hostname v linuxe je pomerne jednoduché:
```bash
$ hostnamectl set-hostname new-hostname
```
>je potrebné eskalovať práva cez sudo prípadne sa prihlástiť ako root

Zobraziť si aktuálny hostname možte cez prikaz:
```bash
$ hostname
```
prípadne:
```bash
$ hostnamectl
```
