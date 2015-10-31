class InquiryMailer < ApplicationMailer
  # layout 'mailer'

  def send_inquiry(inquiry)
    @inquiry = inquiry
    mail(from: "#{inquiry.reply_address}", to: "nolan.camp@gmail.com", subject: "Studio Inquiry From #{inquiry.first_name} #{inquiry.last_name}")
  end

  def send_confirmation(inquiry)
    @inquiry = inquiry
    mail(from: "studio@gmail.com", to: "#{inquiry.reply_address}", subject: "Thank you for your inquiry to Thump Studios")
  end
  
end
