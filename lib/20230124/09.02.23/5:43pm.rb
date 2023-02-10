layout 'bank'
  #layout Proc.new { |controller| controller.request.xhr? ? "bank" : "application" }
  #layout "bank", only: [:index, :new]
  #layout "bank", except: [:index, :new]

#render layout: "bank"



def show
    @bank = Bank.find(params[:id])
    if @book
  end
    #render layout: "bank'
  end

  def new
    @bank = Bank.new
  end


  def create
    @bank = Bank.new(bank_params)
    respond_to do |format|
        if @bank.save
          format.html {redirect_to @bank}
          #render plain: "OK"
          #redirect_to @bank
          #render MyRenderable.new
          #render file: "#{Rails.root}/public/404.html", layout: true
          #render xml: @bank
          #render xml: photo, location: photo_url("/home/nancy/nancy/images/rails.png")
           #render body: "raw"
        else
          #render :new, status: :unprocessable_entity
          format.html { render :new, status: :unprocessable_entity }
        end
      end
  end