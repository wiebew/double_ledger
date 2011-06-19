class LedgerAccountsController < ApplicationController
  # GET /ledger_accounts
  # GET /ledger_accounts.xml
  def index
    @ledger_accounts = LedgerAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ledger_accounts }
    end
  end

  # GET /ledger_accounts/1
  # GET /ledger_accounts/1.xml
  def show
    @ledger_account = LedgerAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ledger_account }
    end
  end

  # GET /ledger_accounts/new
  # GET /ledger_accounts/new.xml
  def new
    @ledger_account = LedgerAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ledger_account }
    end
  end

  # GET /ledger_accounts/1/edit
  def edit
    @ledger_account = LedgerAccount.find(params[:id])
  end

  # POST /ledger_accounts
  # POST /ledger_accounts.xml
  def create
    @ledger_account = LedgerAccount.new(params[:ledger_account])

    respond_to do |format|
      if @ledger_account.save
        format.html { redirect_to(@ledger_account, :notice => 'Ledger account was successfully created.') }
        format.xml  { render :xml => @ledger_account, :status => :created, :location => @ledger_account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ledger_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ledger_accounts/1
  # PUT /ledger_accounts/1.xml
  def update
    @ledger_account = LedgerAccount.find(params[:id])

    respond_to do |format|
      if @ledger_account.update_attributes(params[:ledger_account])
        format.html { redirect_to(@ledger_account, :notice => 'Ledger account was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ledger_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ledger_accounts/1
  # DELETE /ledger_accounts/1.xml
  def destroy
    @ledger_account = LedgerAccount.find(params[:id])
    @ledger_account.destroy

    respond_to do |format|
      format.html { redirect_to(ledger_accounts_url) }
      format.xml  { head :ok }
    end
  end
end
