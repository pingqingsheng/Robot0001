Email <-
function(){
  cat("Do you want to send this to your parterner, Master?", "\n")
  response <- readline(prompt="Yes/No:")
  if(response == "Yes"){
    cat("Which e-mail do you want to use Master:","\n")
    sender <- readline(prompt="Sender:")
    cat("To which partner:","\n")
    recipient <- readline(prompt="Recipient:")
    cat("Please Write Your Subject:","\n")
    subject <- readline(prompt="Subject:")
    cat("Please Input Your Body:","\n")
    body    <- readline(prompt="Body:")
    cat("I need your password Master","\n")
    passwd  <- getPass()
    cat("Are your sure you want to send this e-mail:","\n")
    response <- readline(prompt="Yes/NO:")
    cat("Attached Files Name:", "\n")
    key <- readline(prompt="File Name:")
    filename <- list.files(pattern=key)
    if(response == "Yes"){
      email     <- send.mail(from=sender, to=recipient, subject = subject,
                             body=body,
                             smtp=list(user.name=sender, passwd=passwd,
                                       host.name="smtp.ruf.rice.edu", ssl=TRUE),
                             authenticate = TRUE,
                             send=TRUE,
                             attach.files = filename)
      cat("Task Finished. I think this is a stupid idea Master!", "\n",
          "Maybe you should finish your paper first", "\n",
          "I remember you still have homework to do", "\n")
    }
  }
}
