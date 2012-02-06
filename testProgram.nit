import pagesModule

var pages = new Pages()

# créer une page "foo" de contenu "Foo" et qui a un lien "bar"
pages.addPage(new Page.withNameContentAndUniqueLink("foo", "Foo", "bar"))
print "\nCréer 'foo' lie 'bar'"

# créer une page "bar" de contenu "Bar" sans lien
pages.addPage(new Page.withNameAndContent("bar", "Bar"))
print "Créer 'bar'"

# afficher les chemins et contenus des pages liées par "foo"
print "\nLiens 'foo' : "
print pages.getPageLinks("foo").to_s

# créer une page "toto/tata" de contenu "Tata" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("toto/tata", "Tata", "tutu"))
print "Créer 'toto/tata' lie 'tutu'"

# créer une page "titi" de contenu "Titi" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("titi", "Titi", "tutu"))
print "Créer 'titi' lie 'tutu'"

# créer une page "tutu" de contenu "Tutu" sans lien
pages.addPage(new Page.withNameAndContent("tutu", "Tutu"))
print "Créer 'tutu'"

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "\nLiens 'titi' : "
print pages.getPageLinks("titi").to_s

# afficher les chemins et contenus des pages qui lient "tutu"
print "Liens inverses 'tutu' : "
print pages.getReversedLinks("tutu").to_s

# créer une page "toto/tutu" de contenu "Tutu2" sans lien
print "Créer 'toto/tutu'"
pages.addPage(new Page.withNameAndContent("toto/tutu", "Tutu2"))

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "Liens 'titi' : "
print pages.getPageLinks("titi").to_s

# supprimer la page "tutu"
print "Supprimer 'tutu'"
pages.removePage("tutu")

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "\nLiens 'titi' : "
print "(Aucun lien)"
print pages.getPageLinks("titi").to_s

# créer une page "toto" de contenu "Toto" sans lien
print "Créer 'toto'"
pages.addPage(new Page.withNameAndContent("toto", "Toto"))

# créer une page "toto/tata/tete" de contenu "Tete" sans lien
print "Créer 'toto/tata/tete'\n"
pages.addPage(new Page.withNameAndContent("toto/tata/tete", "Tete"))

# afficher la liste des super-pages de la page "toto/tata/tete"
print "Super pages : 'toto/tata/tete'"
print pages.getSuperPages("toto/tata/tete").to_s

# afficher la liste des sous-pages directes de la page "toto"
print "Sous pages directes : 'toto'"
print pages.getDirectSubPages("toto").to_s

print "\nEverything went better than expected. "