module testProgram

import pagesModule

var pages = new Pages()

# créer une page "foo" de contenu "Foo" et qui a un lien "bar"
pages.addPage(new Page.withContentNameAndUniqueLink("Foo", "foo", new Link("bar")))

# créer une page "bar" de contenu "Bar" sans lien

# afficher les chemins et contenus des pages liées par "foo"

# créer une page "toto/tata" de contenu "Tata" et qui a un lien "tutu"

# créer une page "titi" de contenu "Titi" et qui a un lien "tutu"

# créer une page "tutu" de contenu "Tutu" sans lien

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"

# afficher les chemins et contenus des pages qui lient "tutu"

# créer une page "toto/tutu" de contenu "Tutu2" sans lien

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"

# supprimer la page "tutu"

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"

# créer une page "toto" de contenu "Toto" sans lien

# créer une page "toto/tata/tete" de contenu "Tete" sans lien

# afficher la liste des super-pages de la page "toto/tata/tete"

# afficher la liste des sous-pages directes de la page "toto"
