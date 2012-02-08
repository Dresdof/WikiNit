module pageModule

import linkModule

class Page
	
	var content: String
	
	# Page's name and own link
	var name: Link
	
	# Links to other pages
	var links: List[Link]
	
	init () do
		self.content = ""
		self.name = new Link("")
		self.links = new List[Link]
	end
	
	init withNameAndContent (name: String, content: String) do
		self.name = new Link(name)
		self.content = content
		self.links = new List[Link]
	end
	
	init withNameContentAndUniqueLink (name: String, content: String, link: String) do
		self.name = new Link(name)
		self.content = content
		
		self.links = new List[Link]
		self.links.push(new Link(link))
	end
	
	init withNameContentAndMultipleLinks (name: String, content: String, links: List[String]) do
		self.name = new Link(name)
		self.content = content
		self.links = new List[Link]
		
		for str in links do
			self.links.push(new Link(str))
		end
	end
		
	fun addLink (link: String) do
		links.push(new Link(link))
	end
	
	fun removeLink (link: String) do
		self.links.remove(new Link(link))
	end
	
	fun rename (newName: String) do
		self.name = new Link(newName)
	end
	
	# Displays the elements of the page in a formatted way.
	redef fun to_s: String do
		var str = ""
		str += "#----------------------#\n"
		str += "Name : "
		str += self.name.to_s + "\n"
		str += "Content : " + self.content
		
		if links.length == 0 then
			str += "\n No link in this page."
		else
			for lnk in links do
				str += "\n" + " - Link : " + lnk.to_s
			end
		end
		str += "\n#----------------------#\n"
	
		return str
	end
end