import pagesModule

var pages = new Pages()

# créer une page "foo" de contenu "Foo" et qui a un lien "bar"
pages.addPage(new Page.withNameContentAndUniqueLink("foo", "Foo", "bar"))
print ""
print "Page 'foo' créée."

# créer une page "bar" de contenu "Bar" sans lien
pages.addPage(new Page.withNameAndContent("bar", "Bar"))
print "Page 'bar' créée."

# afficher les chemins et contenus des pages liées par "foo"
print "\nLiens de la Page 'foo' : "
print pages.getPageLinks("foo").to_s

# créer une page "toto/tata" de contenu "Tata" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("toto/tata", "Tata", "tutu"))
print "Page 'toto/tata' créée."

# créer une page "titi" de contenu "Titi" et qui a un lien "tutu"
pages.addPage(new Page.withNameContentAndUniqueLink("titi", "Titi", "tutu"))
print "Page 'titi' créée."

# créer une page "tutu" de contenu "Tutu" sans lien
pages.addPage(new Page.withNameAndContent("tutu", "Tutu"))
print "Page 'tutu' créée."

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens de la Page 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "\nLiens de la Page 'titi' : "
print pages.getPageLinks("titi").to_s

# afficher les chemins et contenus des pages qui lient "tutu"
	# Not implemented yet
#var tutu = pages.getPageBacklinks("tutu")

# créer une page "toto/tutu" de contenu "Tutu2" sans lien
print "Page 'toto/tutu' créée."
pages.addPage(new Page.withNameAndContent("toto/tutu", "Tutu2"))

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens de la Page 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "\nLiens de la Page 'titi' : "
print pages.getPageLinks("titi").to_s

# supprimer la page "tutu"
print "Page 'tutu' supprimée"
pages.removePage("tutu")

# afficher les chemins et contenus des pages liées par "toto/tata" et "titi"
print "\nLiens de la Page 'toto/tata' : "
print pages.getPageLinks("toto/tata").to_s

print "\nLiens de la Page 'titi' : "
print "(Aucun lien)"
print pages.getPageLinks("titi").to_s

# créer une page "toto" de contenu "Toto" sans lien
pages.addPage(new Page.withNameAndContent("toto", "Toto"))

# créer une page "toto/tata/tete" de contenu "Tete" sans lien
pages.addPage(new Page.withNameAndContent("toto/tata/tete", "Tete"))

# afficher la liste des super-pages de la page "toto/tata/tete"
	# Not yet implemented
#var superTototatatete = pages.getSuperPages("toto/tata/tete")

# afficher la liste des sous-pages directes de la page "toto"
	# Not yet implemented
#var directSubToto = pages.getDirectSubPages("toto")

print "Everything went better than expected. "