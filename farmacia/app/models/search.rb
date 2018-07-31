class Search
	def initialize(page, page_size, keywords, current_user = nil)
		@page = page
		@page_size = page_size
		@offset = page_size * page
		@keywords = keywords
		@current_user = current_user
	end

	def sales
		if @keywords.present?
		    sales = Sale.where(sale_condition).order(number: :desc).offset(@offset).limit(@page_size)
		    @number_of_records = Producto.where(description_condition).count
	    else
		    sales = Sale.where(state: "confirmed").order(number: :desc).offset(@offset).limit(@page_size)
			@number_of_records = Sale.where(state: "confirmed").count
	    end

		return sales, number_of_pages
	end

	private

	def name_condition
		name_condition = "unaccent(lower(name)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
	end

	def description_condition
		description_condition = "unaccent(lower(description)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
	end

	def sale_condition
		number_condition = "number = #{@keywords.to_i} and user_id = #{@current_user.id} and state = 1"
	end

	def number_of_pages
		number_of_pages = (@number_of_records % @page_size) == 0 ? 
	                        @number_of_records / @page_size - 1 : @number_of_records / @page_size
	end
end