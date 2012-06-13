module SoupsHelper

def create_unordered_list(list, style_class = nil )
		if list.empty?
		  
		else
			if style_class.empty?
				listString = "<ul>#{create_list(list)}</ul>"
				listString.html_safe
			else 
				listString = "<ul class=#{style_class}>#{create_list(list)}</ul>"
				listString.html_safe
			end

		end
	end

	def create_ordered_list(list, style_class = nil)
		if list.empty?
		
		else 
			if style_class.empty?
				listString = "<ol>#{create_list(list)}</ol>"
				listString.html_safe
			else 
				listString = "<ol class=#{style_class}>#{create_list(list)}</ol>"
				listString.html_safe
			end
		end
	end


	def create_list(stringList)
		arrayList = stringList.split(",")
		listString = ""
		arrayList.each do |n|
			listString += "<li>#{n}</li>"
		end
		listString
	end

	def list_alphabetical_soups(soupList)
		output="<ul id='list_of_soups'>"
		@soups=soupList.group_by{|soup| soup.title[0]}
		@soups.keys.sort.each do |starting_letter| 
			output += starting_letter
				@soups[starting_letter].each do |soup| 
					output += "<li>#{link_to(soup.title, soup_path(soup))}</li>"
				end
		end 
		output += "</ul>"
		output.html_safe
	end
end

