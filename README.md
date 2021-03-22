Nous avons choisi Selenium afin de réaliser le scrapping des données car c'est une bibliothèque puissante et polyvalente qui permet de simuler des inputs utilisateurs complexes de manière très personnalisable.
On peut ainsi scrapper toutes sortes de sites différents et facilement circonvenir les protections, écrans popups gênants, etc.
De plus, c'est une application plus généraliste que de simples scrappers car elle est à l'origine dédiée au test unitaire. Nous avons donc aussi choisi cette technologie à dessein car elle nous
parait plus valorisable sur le marché de l'emploi.

Concernant le choix de mysql pour la BDD, c'est un SGBDR simple d'utilisation et qui fait très bien l'affaire pour stocker nos données financières qui ne sont pas très volumineuses.

Pour graphana, nous l'avons choisi car il accepte mysql en Datasource, permet d'obtenir facilement de belles visualisations avec un système de queries simples (et facilement personnalisable sur des ajustements de dernière minute)
sur la BDD, s'actualise automatiquement avec de nouvelles données mises en base et permet un export JSON très simple (pas besoin de paramétrer de volume docker).

Nous avons choisi de contenairiser mysql et graphana pour continuer à prendre en main docker et permettre un redéploiement rapide de toute la solution sur un autre poste informatique.

Le script python en lui-même est resté en local sous la forme d'un notebook par soucis de simplicité (afin d'éviter de devoir rebâtir une image en cas de changement du layout du site nécessitant de
revoir le scrapper). En entreprise, selon l'utilisateur final visé, il faudrait peut-être contenairiser l'intégralité de l'application pour plus de simplicité.
