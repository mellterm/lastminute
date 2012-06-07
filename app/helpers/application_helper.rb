module ApplicationHelper

# Returns the full title on a per-page basis. # Documentation comment
	def full_title(page_title) # Method definition
		base_title = "Last Minute Translations"
		if page_title.empty?
			base_title # 
		else
			"#{base_title} | #{page_title}" # String interpolation
		end
	end

end
