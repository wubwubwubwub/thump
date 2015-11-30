class InquiryMailer < ApplicationMailer
  # layout 'mailer'

  def send_inquiry(inquiry)
    @inquiry = inquiry
    mail(from: "#{inquiry.reply_address}", to: "booking@thumprecording.com", subject: "Studio Inquiry From #{inquiry.name}")
  end

  def send_confirmation(inquiry)
    @inquiry = inquiry
    mail(from: "booking@thumprecording.com", to: "#{inquiry.reply_address}", subject: "Thank you for your inquiry to Thump Studios")
  end
  
end
