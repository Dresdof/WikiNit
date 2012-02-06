module linkModule

class Link

	var link: List[String]

	init (string: String) do
		self.link = buildLink(string)
	end

	fun setLink(string: String) do
		self.link = buildLink(string)
	end
	
	# Divide the argument string into a string list
	private fun buildLink(string: String) : List[String] do
		var stringList = new List[String]
	
		while string.length > 0 do
			if string.index_of('/') > -1 then
				stringList.push(string.substring(0, string.index_of('/')))
				string = string.substring_from(string.index_of('/') + 1)
			else
				stringList.push(string)
				break
			end
		end
	
		return stringList
	end

	redef fun ==(o) do
		if not o isa Link or o is null then return false
			if o.link.length != self.link.length then return false
			
			for i in [0..self.link.length - 1] do
				if o.link[i] != self.link[i] then return false
			end
		return true
	end

	redef fun to_s: String do
		var str = link[0]
		
		for i in [1..link.length - 1] do
			str += "/"
			str += link[i]
		end
		
		return str
	end

end

