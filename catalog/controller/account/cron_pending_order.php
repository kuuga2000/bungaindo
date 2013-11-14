<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Sheetal Godase
#data: 11 June 2013
*/ 

class ControllerAccountCronpendingorder extends Controller {
	public function index() {
		
			$this->load->model('account/cron_pending_order');
		
$order_info = $this->model_account_cron_pending_order->getPendingOrder();

	$template = new Template();
	$subject = "Pending Orders List";
	$template->data['details']=$order_info;

$template->data['store_name']=$this->config->get('config_url');

if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/mail/cron_pending_order.tpl')) 			
{
	 $html = $template->fetch($this->config->get('config_template') . '/template/mail/cron_pending_order.tpl');
} 
else
{
	$html = 'Please check the email template';	
}


$mail = new Mail(); 
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');	
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender($this->config->get('config_name'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setHtml($html);
			$mail->setText(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			$json['success'] = 1;






}

}
?>