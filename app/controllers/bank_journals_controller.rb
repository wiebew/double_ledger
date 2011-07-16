class BankJournalsController < ApplicationController

  #TO DO 
  #conclusie, journal is een standaard ding inkoop, verkoop, memoriaal hebben zelfde structuur
  #maak een class journal met een view en kies welke journal je wil gebruiken
  #enige wat uniek is invoerscherm voor een nieuwe (inkoop/verkoop), (kas, bank, memoriaal) etc.

  def create
    @journal = BankJournal.new(params[:bank_journal])

    respond_to do |format|
      if @journal.save
        format.html { redirect_to(@journal, :notice => 'Journal was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def new
    @journal = BankJournal.new    
    respond_to do |format|
      format.html # new.html.erb
    end
  end
    
  def index
    @journals = BankJournal.find(:all)
  end

  def edit
    @journal = BankJournal.find(params[:id])  
  end

  def update
    @journal = BankJournal.find(params[:id])

    respond_to do |format|
      if @journal.update_attributes(params[:bank_journal])
        format.html { redirect_to(@journal, :notice => 'Bank journal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @journal.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
    @journal = BankJournal.find(params[:id])
    @journal_items = JournalItem.find(:all, :conditions => { :journal_id => @journal.id } )
    respond_to do |format|
      format.html # new.html.erb
    end
  end


  def destroy
    @journal = BankJournal.find(params[:id])
    @journal.destroy

    respond_to do |format|
      format.html { redirect_to(bank_journals_url) }
      format.xml  { head :ok }
    end
  end

end
