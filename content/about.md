title=About
summary=Rozmýšľal som chvíľu čo by som mal napísať o tomto blogu. Prečo som sa vlastne rozhodol ho písať? Možno technológie použité pri jeho tvorbe.
date=2020-05-04
type=page
status=published
~~~~~~

## Prečo
Naturelom som developer/engineer, ktorý primárne vyvíja v jave. Posledné dva roky vediem team, ktorý zmigroval, deployol a runnuje SSO založené na [Keycloak](https://www.keycloak.org/) v K8s v onprem klastry v 5. ázijských krajinách. Len pre zaujmavosť najväčšia z nich generuje cca 400 requestov na túto aplikáciu. Súčasťou získavania znalostí bolo aj hlbšie preniknutie do administrácie linuxu. Postupne by som rád nazdieľal, čo sme sa v teame museli naučiť. A, prečo slovenčina v technickom blogu? No anglických blogov na túto tému je na hafo :).

## Technologický stack blogu
Ako som písal vyššie som javista. Preto aj pre generovanie blogu som si zvolil java technológiu [jbake](https://jbake.org/) namiesto ruby [jekyll](https://jekyllrb.com/), prípadne javascriptu [Ghost](https://ghost.org/). Či je to dobrá technológia na blog ukáže až čas. Budem zdieľať. Samotný blog je vygenerovaný statický obsah z git repozitára na [githube](https://github.com/mbocek/blog). Nad repozitárom je CD pipeline urobená pomocou [github actions](https://github.com/mbocek/blog/actions). Deploy prebieha na ftp úložisko na hostingu.
