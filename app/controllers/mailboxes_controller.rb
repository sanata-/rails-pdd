class MailboxesController < ApplicationController
  before_action :set_mailbox, only: [:show, :edit, :update, :destroy]

  # GET /mailboxes
  def index
    @mailboxes = Mailbox.all
  end

  # GET /mailboxes/1
  def show
  end

  # GET /mailboxes/new
  def new
    @mailbox = Mailbox.new
  end

  # GET /mailboxes/1/edit
  def edit
  end

  # POST /mailboxes
  def create
    @mailbox = Mailbox.new(mailbox_params)

    if @mailbox.save
      redirect_to @mailbox, notice: 'Mailbox was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mailboxes/1
  def update
    if @mailbox.update(mailbox_params)
      redirect_to @mailbox, notice: 'Mailbox was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mailboxes/1
  def destroy
    @mailbox.destroy
    redirect_to mailboxes_url, notice: 'Mailbox was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailbox
      @mailbox = Mailbox.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mailbox_params
      params.require(:mailbox).permit(:name, :data)
    end
end
