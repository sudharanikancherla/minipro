import smtplib
from smtplib import SMTP
from email.message import EmailMessage
def sendmail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('anusha@codegnan.com','caaz jgrq fgca szuv')
    msg=EmailMessage()
    msg['FROM']='anusha@codegnan.com'
    msg['TO']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.close()



