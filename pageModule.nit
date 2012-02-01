module pageModule

import linkModule

# Defines a page
class Page
	
	# Content of the page
	var content: String
	
	# Page's own link
	var name: Link
	
	# Links to other pages
	var links: List[Link]
	
	init () do
		self.links = new List[Link]
	end
	
	init withContentAndName (content: String, name: String) do
		self.content = content
		self.name = new Link(name)
		self.links = new List[Link]
	end
	
	init withContentNameAndMultipleLinks (content: String, name: String, links: List[Link]) do
		self.content = content
		self.name = new Link(name)
		self.links = links
	end
		
	init withContentNameAndUniqueLink (content: String, name: String, link: Link) do
		self.content = content
		self.name = new Link(name)
		self.links = new List[Link]
		self.links.push(link)
	end
		
	fun addLink (link: Link) do
		links.push(link)
	end
	
	fun removeLink (link: Link) do
		#for currentLink in links do
		#	if currentLink.link == link.link then
		#		currentLink.delete
		#	end
		#end
		self.links.remove(link)
	end
	
end