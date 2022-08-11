# Brief

Ce module est pour un cas d'usage très simple, et ne respecte pas un certain nombre de bonnes pratiques de sécurité par contrainte de temps.
Des pistes d'amélioration sont listées dans le README, et concernent principalement la sécurité. Je t'invite à les lire pour avoir une idée de ce qui me paraîtrait important à implémenter.
J'ai voulu créer un cadre de développement le plus simple et le plus clair possible.

Le code est complétement auto-documenté à mon sens, grâce à l'utilisation systématique des descriptions et de terraform-doc.
Voici quelques examples de choix de conception:

- Le projet et la region sont des variables optionnelles. J'ai considéré que dans une grande partie des cas les déploiements étaient mono-projet et même mono-région au sein d'une stack terraform ou terragrunt. Et que donc cette configuration venait du provider. J'ai donc pris le parti d'alléger.

- Toute la configuration est comprise dans des variables simples: au plus complexe une liste. Je pense qu'il est une bonne pratique de garder la configuration assez plate. Bien entendu dans un grand nombre de cas l'utilisation d'objets fait sens. J'essaie alors de garder une hiérarchie d'une profondeur de 3 niveaux maximum. La plupart du temps un ou deux niveaux suffisent. J'essaie de garder le même principe pour les modules et sous-modules en limitant la profondeur de sous dossiers.

- J'ai aussi essayé de montrer quelques bonnes pratiques git: le dépôt est versionné en SemVer et j'ai squash mes petits commits de dev dans un commit de release.

- La gestion du state est hors scope, mais sur GCP le plus évident est d'utiliser un bucket. Sur lequel il faut bien penser à activer l'object versionning pour se prévenir de mauvaises surprises comme on a pu en avoir au Pass Culture ^^"

Je serai bien sûr à disposition pour parler de la conception et des pistes d'amélioration pendant l'entretien.

Merci de m'avoir lu jusqu'au bout :)

Samuel