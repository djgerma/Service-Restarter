# Weekly Services Restart Script
# Danijel Gerbez
# 07/10/2020

$gatewaySVCName = "some_service_name"
$gatewayWrapper = "some_service_name"
$EngineSVCName = "some_service_name"
$canGateway = "some_server_hostname"
$dayGateway = "some_server_hostname"
$cenGateway = "some_server_hostname"
$EngineServer = "some_server_hostname"

###################GET STATUS PRIOR TO RESTART OF SERVICE#######################################
"###Checking Service Status for Some service name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $EngineSVCName is " + (Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Checking Service Status for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewaySVCName is " + (Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewayWrapper is " + (Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Checking Service Status for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewaySVCName is " + (Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewayWrapper is " + (Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Checking Service Status for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewaySVCName is " + (Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
"$(get-date) $gatewayWrapper is " + (Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

###################STOP ALL SERVICES#############################################################
"`n###Stopping Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Stop()
"$(get-date) $EngineSVCName is now " + (Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Stopping Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Stop()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Stop()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Stopping Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Stop()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Stop()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

"`n###Stopping Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Stop()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Stop()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log

###################START ALL SERVICES#############################################################

"`n###Starting Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Start()
$EngineAfterRestart = (Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Status
"$(get-date) $EngineSVCName is now " + (Get-Service -ComputerName $EngineServer -Name $EngineSVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log


"`n###Starting Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Start()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Start()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
$canGatewayAfterRestart = (Get-Service -ComputerName $canGateway -Name $gatewaySVCName).Status
$canWrapperAfterRestart = (Get-Service -ComputerName $canGateway -Name $gatewayWrapper).Status


"`n###Starting Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Start()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Start()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
$dayGatewayAfterRestart = (Get-Service -ComputerName $dayGateway -Name $gatewaySVCName).Status
$dayWrapperAfterRestart = (Get-Service -ComputerName $dayGateway -Name $gatewayWrapper).Status


"`n###Starting Services for some_service_name###" | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Start()
"$(get-date) $gatewaySVCName is now " + (Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
(Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Start()
"$(get-date) $gatewayWrapper is now " + (Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Status | Out-File -Append C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log
$cenGatewayAfterRestart = (Get-Service -ComputerName $cenGateway -Name $gatewaySVCName).Status
$cenWrapperAfterRestart = (Get-Service -ComputerName $cenGateway -Name $gatewayWrapper).Status


#################EMAIL LOG FILE#######################

$fromaddress = "$env:COMPUTERNAME@somedomain.com"
$toaddress = "someuser@somedomain.com"
#$bccaddress = ""
#$CCaddress = ""
$Subject = "some_subject_line"
$body = "Services Have been Restarted. Please review the log for any services stuck in stopped state!"
$attachment = "C:\ERP\Scan\Log\$(get-date -f yyyy-MM-dd)_ServiceRestart.log"
$smtpserver = "SMTP Relay Server Here"

$message = new-object System.Net.Mail.MailMessage
$message.From = $fromaddress
$message.To.Add($toaddress)
$message.CC.Add($CCaddress)
$message.Bcc.Add($bccaddress)
$message.IsBodyHtml = $True
$message.Subject = $Subject
$attach = new-object Net.Mail.Attachment($attachment)
$message.Attachments.Add($attach)
$message.body = $body
$smtp = new-object Net.Mail.SmtpClient($smtpserver)
$smtp.Send($message)
