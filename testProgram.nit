module testProgram

import pagesModule

var pages = new Pages()

# créer une page "foo" de contenu "Foo" et qui a un lien "bar"
pages.addPage(new Page.withNameContentAndUniqueLink("foo", "Foo", new Link("bar")))

# créer une page "bar" de contenu "Bar" sans lien
pages.addPage(new Page.withNameAndContent("bar", "Bar"))

# afficher les chemins et contenus des pages liées par "foo"
	# Not implemented yet
var fooPages = pages.getPageLinks(new Link("foo"))

# créer une page "toto/tata" de contenu "Tata" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("toto/tata", "Tata", new Link("tutu")))

# créer une page "titi" de contenu "Titi" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("titi", "Titi", new Link("tutu")))

# créer une page "tutu" de contenu "Tutu" sans lien
pages.addPage(new Page.withNameAndContent("tutu", "Tutu"))

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
	# Not implemented yet
var tototata = pages.getPageLinks(new Link("toto/tata"))
var titi = pages.getPageLinks(new Link("titi"))

# afficher les chemins et contenus des pages qui lient "tutu"
	# Not implemented yet
var tutu = pages.getReverserdPageLinks(new Link("tutu"))

# créer une page "toto/tutu" de contenu "Tutu2" sans lien
pages.addPage(new Page.withNameAndContent("toto/tutu", "Tutu2"))

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
	# Not yet implemented
tototata = pages.getPageLinks(new Link("toto/tata"))
titi = pages.getPageLinks(new Link("titi"))

# supprimer la page "tutu"
	# Not yet implemented
pages.removePage(new Link("tutu"))

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
	# Not yet implemented
tototata = pages.getPageLinks(new Link("toto/tata"))
titi = pages.getPageLinks(new Link("titi"))

# créer une page "toto" de contenu "Toto" sans lien
pages.addPage(new Page.withNameAndContent("toto", "Toto"))

# créer une page "toto/tata/tete" de contenu "Tete" sans lien
pages.addPage(new Page.withNameAndContent("toto/tata/tete", "Tete"))

# afficher la liste des super-pages de la page "toto/tata/tete"
	# Not yet implemented
var superTototatatete = pages.getSuperPages(new Link("toto/tata/tete"))

# afficher la liste des sous-pages directes de la page "toto"
	# Not yet implemented
var directSubToto = pages.getDirectSubPages(new Link("toto"))