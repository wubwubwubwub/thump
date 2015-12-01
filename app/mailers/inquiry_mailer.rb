class InquiryMailer < ApplicationMailer
  # layout 'mailer'

  # ----- for stagin/production ----- #

  # def send_inquiry(inquiry)
  #   @inquiry = inquiry
  #   mail(reply_to: "#{inquiry.reply_address}", from: "#{inquiry.reply_address}", to: "thumprecording@gmail.com", subject: "Studio Inquiry From #{inquiry.name}")
  # end

  # def send_confirmation(inquiry)
  #   @inquiry = inquiry
  #   mail(from: "booking@thumprecording.com", to: "#{inquiry.reply_address}", subject: "Thank you for your inquiry to Thump Studios")
  # end


  # ----- for development ----- #  

  def send_inquiry(inquiry)
    @inquiry = inquiry
    mail(reply_to: "#{inquiry.reply_address}", from: "#{inquiry.reply_address}", to: "nolan.camp@gmail.com", subject: "Studio Inquiry From #{inquiry.name}")
  end

  def send_confirmation(inquiry)
    @inquiry = inquiry
    mail(from: "booking@thumprecording.com", to: "#{inquiry.reply_address}", subject: "Thank you for your inquiry to Thump Studios")
  end

  
end
