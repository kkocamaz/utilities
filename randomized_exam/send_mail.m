clearvars
clc

metu_username= 'kkocamaz';
mail = 'kkocamaz@metu.edu.tr';
psswd = '*******';
host = 'smtp.metu.edu.tr';
port  = '465';
emailto = 'korhankocamaz@gmail.com';
m_subject = 'subject';
m_text = 'test';
setpref( 'Internet','E_mail', mail );
setpref( 'Internet', 'SMTP_Server', host );
setpref( 'Internet', 'SMTP_Username', metu_username );
setpref( 'Internet', 'SMTP_Password', psswd );
props = java.lang.System.getProperties;
props.setProperty( 'mail.smtp.user', mail );
props.setProperty( 'mail.smtp.host', host );
props.setProperty( 'mail.smtp.port', port );
props.setProperty( 'mail.smtp.starttls.enable', 'true' );
props.setProperty( 'mail.smtp.debug', 'true' );
props.setProperty( 'mail.smtp.auth', 'true' );
props.setProperty( 'mail.smtp.socketFactory.port', port );
props.setProperty( 'mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory' );
props.setProperty( 'mail.smtp.socketFactory.fallback', 'false' );



sendmail(emailto,'Hello from MATLAB!', ...
    'Thanks for using sendmail.','C:/Users/k/Desktop/inputs/latex/pdf_files/fripp.pdf');

