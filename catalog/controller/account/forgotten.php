<?php
class ControllerAccountForgotten extends Controller {
	private $error = array();

	public function index() {
		if ($this->customer->isLogged()) {
			$this->redirect($this->url->link('account/account', '', 'SSL'));
		}

		$this->language->load('account/forgotten');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/customer');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->language->load('mail/forgotten');
			
			$password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
			
			/*$this->model_account_customer->editPassword($this->request->post['email'], $password);
			
			$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
			
			$message  = sprintf($this->language->get('text_greeting'), $this->config->get('config_name')) . "\n\n";
			$message .= $this->language->get('text_password') . "\n\n";
			$message .= $password;

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->request->post['email']);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender($this->config->get('config_name'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			
			$this->session->data['success'] = $this->language->get('text_success');*/

			//$this->redirect($this->url->link('account/login_register', '', 'SSL'));
			$this->model_account_customer->addForgotPasswordToken($this->request->post['email']);
			$this->session->data['success'] = 'Thanks! Please Check Your Email.';
			$this->redirect($this->url->link('account/forgotten'));
		}

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),     	
        	'separator' => $this->language->get('text_separator')
      	);
		
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_forgotten'),
			'href'      => $this->url->link('account/forgotten', '', 'SSL'),       	
        	'separator' => $this->language->get('text_separator')
      	);
		
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_your_email'] = $this->language->get('text_your_email');
		$this->data['text_email'] = $this->language->get('text_email');

		$this->data['entry_email'] = $this->language->get('entry_email');

		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_back'] = $this->language->get('button_back');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		//custom
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		//custom
		$this->data['action'] = $this->url->link('account/forgotten', '', 'SSL');
 
		$this->data['back'] = $this->url->link('account/login_register', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/forgotten.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/forgotten.tpl';
		} else {
			$this->template = 'default/template/account/forgotten.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'	
		);
								
		$this->response->setOutput($this->render());		
	}

	public function validatePasswordToken()
	{
		$this->session->data['error'] = '';
		$this->session->data['success'] = '';
		
		if(isset($this->request->get['token']) && $this->request->get['token'] !='')
		{
			$this->load->model('account/customer');
			$password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
			
			$email = $this->model_account_customer->getEmailFromToken($this->request->get['token']);
			if($email != '')
			{
				$this->language->load('mail/forgotten');
				$this->model_account_customer->editPassword($email, $password);
			
				$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
				
				$message  = sprintf($this->language->get('text_greeting'), $this->config->get('config_name')) . "<br/><br/>";
				$message .= 'Your new password is:' . "<br/><br/>";
				$message .= $password;								$mail = new PHPMailer(true);				$mail->IsSMTP();				$mail->SMTPAuth = true;				$mail->Port = '25';				$mail->Host = 'mail.bungaindo.com'; 				$mail->Username = 'admin@bungaindo.com'; 				$mail->Password = 'kebunrayabogor1'; 				$mail->SMTPAuth = true; 				$to = $email;				$mail->AddAddress($to);				$mail->From = $this->config->get('config_email');				$mail->FromName = $this->config->get('config_name');				$mail->Subject = (html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));				$mail->AltBody = "To view the message, please use an HTML compatible email viewer!";				$mail->WordWrap = 80; 				$mail->MsgHTML(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));				$mail->IsHTML(true);				if($mail->Send()){									}				
				$this->session->data['success'] = 'Please check you email for new password.';
			}
			else
			{
				$this->session->data['error'] = 'You have already reset your password.';
			}
		}
		else
		{
			$this->session->data['error'] = 'Invalid Token.';
		}

		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
			
			
		}
		
	protected function validate() {
		
		/*$strActivation = $this->model_account_customer->checkCustomerActivationForgotPassword($this->request->post['email_login']);
		if(empty($strActivation['activation_token']))
		{
			if (!$this->customer->login($this->request->post['email_login'], $this->request->post['password_login'])) {
      		$this->error_login['warning'] = $this->language->get('error_login');	
    	}
		}
		else
		{
			$this->error_login['warning'] = $this->language->get('error_activation');
		}*/
		
		
		
		if (!isset($this->request->post['email'])) {
			
			$this->error['warning'] = $this->language->get('error_email');
		} elseif (!$this->model_account_customer->checkCustomerActivationForgotPassword($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_activation');
		} elseif (!$this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_email');
		} 
		

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>