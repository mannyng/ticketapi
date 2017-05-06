class ChooseTicket
  attr_reader :where_clause, :where_args, :order

  def initialize(choose_ticket)
    choose_ticket = choose_ticket.upcase
    @where_clause = ""
    @where_args = {}
    build_for_ticketing_search(choose_ticket)
  end

  def build_for_ticketing_search(choose_ticket)
    @where_clause << case_insensitive_search(:origin)
    @where_args[:origin] = starts_with(choose_ticket)

    @order = "duration desc"
   end
   def starts_with(choose_ticket)
    choose_ticket
   end
   def case_insensitive_search(field_name)
     "lower(#{field_name}) like :#{field_name}"
   end

end
