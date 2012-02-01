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
	
	fun findPage(pageLink: Link): Page do
		return new Page
	end
	
	fun removePage(pageLink: Link) do
		
	end
	
	fun getPageLinks(pageLink: Link): List[Page] do
		return new List[Page]
	end
	
	fun getSuperPages(pageLink: Link): List[Page] do
		return new List[Page]
	end
	
	fun getDirectSubPages(pageLink: Link): List[Page] do
		return new List[Page]
	end
	
end