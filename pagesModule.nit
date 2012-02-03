module pagesModule

import pageModule

# Contains the list of all created pages
class Pages

	# All pages
	var pages: List[Page]
	
	init() do
		pages = new List[Page]
	end
	
	fun addPage(page : Page) do
		pages.push(page)	
	end
	
	fun findPage(link: Link): nullable Page do
		
		var pageFound = new Page
		
		var found = false
		
		while not found do 
			for currentPage in pages do
				if currentPage.name.link.length == link.link.length then
					var nodeMatch = true
				
					for i in [0..currentPage.name.link.length] do
						if currentPage.name.link[i] != link.link[i] then
							nodeMatch = false
						end						
					end
					
					if nodeMatch then
						pageFound = currentPage
						found = true
					end
				end
			end
		end
		if found then
			return pageFound
		else
			return null
		end
	end
	
	private fun resolveLink(link: Link, parentLink: Link): Page do
		return new Page
	end
	
	private fun isLinkResolvable(link: Link, parentLink: Link): Bool do
		return false
	end
	
	fun removePage(pageLink: String) do
		
		var page = findPage(new Link(pageLink))
		
		if page != null then
			pages.remove(page)
		end
		
	end
	
	fun getPageLinks(pageLink: String): nullable List[Page] do
		
		var page = findPage(new Link(pageLink))
		var links = new List[Link]
		var pages = new List[Page]
		var empty = true
		
		if page != null then
			links = page.links
			empty = false
		end
		
		for link in links do
			if isLinkResolvable(link, new Link(pageLink)) then
				pages.push(resolveLink(link, new Link(pageLink)))
			end
		end
		
		if not empty then
			return pages
		else
			return null
		end

	end
	
	fun getSuperPages(pageLink: String): List[Page] do
		var link = new Link(pageLink)
			
		return new List[Page]
	end
	
	fun getDirectSubPages(pageLink: String): List[Page] do
		var link = new Link(pageLink)
			
		return new List[Page]
	end
	
	fun getPageBacklinks(pageLink: String): List[Page] do
		var link = new Link(pageLink)
			
		return new List[Page]
	end
end