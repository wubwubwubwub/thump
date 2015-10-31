class InquiriesController < InheritedResources::Base

  def create
    @inquiry = Inquiry.new(inquiry_params)
 
    respond_to do |format|
      if @inquiry.save
        InquiryMailer.send_inquiry(@inquiry).deliver_later
        InquiryMailer.send_confirmation(@inquiry).deliver_later
        
        # format.html { redirect_to(@inquiry, notice: 'email sent') }
        format.json { render json: @inquiry, status: :created, location: @inquiry }
      else
        format.html { render action: 'new' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end  

  private

    def inquiry_params
      params.require(:inquiry).permit(:first_name, :last_name, :reply_address, :subject, :message)
    end
end

