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
	
	fun findPage(pageLink: String): Page do
		var link = new Link(pageLink)
		
		var pageFound = new Page
		
		var found = false
		
		while not found do 
			for currentPage in pages do
				if currentPage.name.link.length == link.link.length then
					var nodeMatch = false
				
					for i in [0..currentPage.name.link.length] do
						if currentPage.name.link[i] == link.link[i] then
							nodeMatch = true
						else 
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
		return pageFound
	end
	
	fun resolveLink(pageLink: String, parentLink: String): Page do
		return new Page
	end
	
	fun removePage(pageLink: String) do
		var link = new Link(pageLink)
		
	end
	
	fun getPageLinks(pageLink: String): List[Page] do
		var link = new Link(pageLink)		
			
		return new List[Page]
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