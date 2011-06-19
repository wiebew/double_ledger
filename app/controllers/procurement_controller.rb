class ProcurementController < ApplicationController

  #TO DO 
  #conclusie, journal is een standaard ding inkoop, verkoop, memoriaal hebben zelfde structuur
  #maak een class journal met een view en kies welke journal je wil gebruiken
  #enige wat uniek is invoerscherm voor een nieuwe (inkoop/verkoop), (kas, bank, memoriaal) etc.
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def index
    @journal_items = JournalItem.find(:all, :conditions => { :journal_id => 1 } )
    respond_to do |format|
      format.html # new.html.erb
    end
  end
end
