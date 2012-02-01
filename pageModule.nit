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
	
	init withNameAndContent (name: String, content: String) do
		self.name = new Link(name)
		self.content = content
		self.links = new List[Link]
	end
	
	init withNameContentAndMultipleLinks (name: String, content: String, links: List[Link]) do
		self.name = new Link(name)
		self.content = content
		self.links = links
	end
		
	init withNameContentAndUniqueLink (name: String, content: String, link: String) do
		self.name = new Link(name)
		self.content = content
		
		self.links = new List[Link]
		self.links.push(new Link(link))
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