function persondetectmail() % for Gmail only

mail = 'sender@gmail.com'; % sender's gmail address
sender = 'Sender <sender@gmail.com>'; % "Sender" = sender's name
receiver = 'receiver@gmail.com'; %receiver's gmail address
password = '********';  % sender's gmail password 
host = 'smtp.gmail.com';
% preferences
setpref('Internet','SMTP_Server', host);
setpref('Internet','E_mail',sender);
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
% Send the email
sendmail(receiver,'ALERT','Person Detected!','location of persondetected.jpg'); 
% sendemail('receiver's email address','subject of email','message in email','attachment'); 'persondetected.jpg' is snapshot of the detected person

end