<?php
class Mail {
	protected $to;
	protected $from;
	protected $sender;
	protected $subject;
	protected $text;
	protected $html;
	protected $attachments = array();
	public $protocol = 'SMTP';
	public $hostname = 'mail.bungaindo.com';
	public $username = 'admin@bungaindo.com';
	public $password = 'kebunrayabogor1';
	public $port = 25;
	public $timeout = 5;
	public $newline = "\n";
	public $crlf = "\r\n";
	public $verp = false;
	public $parameter = '';
	public function setTo($to) {
		$this->to = $to;
	}	public function setFrom($from) {
		$this->from = $from;
	}	public function setSender($sender) {
		$this->sender = $sender;
	}	public function setSubject($subject) {
		$this->subject = $subject;
	}	public function setText($text) {
		$this->text = $text;
	}	public function setHtml($html) {
		$this->html = $html;
	}
	public function addAttachment($filename) {
		$this->attachments[] = $filename;
	}
	public function send() {		if (!$this->to) {			exit('Error: E-Mail to required!');		}		if (!$this->from) {			exit('Error: E-Mail from required!');		}		if (!$this->sender) {			exit('Error: E-Mail sender required!');		}		if (!$this->subject) {			exit('Error: E-Mail subject required!');		}		if ((!$this->text ) && (!$this->html)) {			exit('Error: E-Mail message required!');		}		if (is_array ($this->to)) {			$to = implode (',', $this->to );		} else {			$to = $this->to;		}		$mail = new PHPMailer;		$mail->CharSet = 'utf-8';		$boundary = '—-=_NextPart_' . md5(time ());		$header = '"';		if ($this->protocol != 'mail') {			$header .= 'To: ' . $to . $this->newline;			$header .= 'Subject: ' . $this->subject . $this->newline;			$mail->AddAddress($to);			$mail->Subject = $this->subject;		}		$header .= 'From: ' . $this->sender . ' from'. '>' . $this->newline;		$mail->SetFrom( $this->from , $this->sender);		$header .= 'Reply-To: ' . $this->sender . ' from '. '>' . $this->newline;		$mail->AddReplyTo( $this->from , $this->sender);		$header .= 'Return-Path: ' . $this->from . $this->newline;		$header .= 'X-Mailer: PHP/' . phpversion() . $this->newline;		$header .= 'MIME-Version: 1.0' . $this->newline;		$header .= 'Content-Type: multipart/mixed; boundary="' . $boundary . '"' . $this->newline;		if (! $this->html ) {			$message = '–' . $boundary . $this->newline;			$message .= 'Content-Type: text/plain; charset="utf-8?' . $this->newline;			$message .= 'Content-Transfer-Encoding: 8bit' . $this->newline . $this->newline;			$message .= $this->text . $this->newline ;			$mail->AltBody = $this->text;		} else {			$message = '–' . $boundary . $this->newline;			$message .= 'Content-Type: multipart/alternative; boundary="' . $boundary . '_alt"' . $this->newline . $this->newline;			$message .= '–' . $boundary . '_alt' . $this->newline;			$message .= 'Content-Type: text/plain; charset="utf-8?' . $this->newline;			$message .= 'Content-Transfer-Encoding: 8bit' . $this->newline;			if ($this->text) {				$message .= $this->text . $this->newline;			} else {				$message .= 'This is a HTML email and your email client software does not support HTML email!' . $this->newline;			}			$message .= '–' . $boundary . '_alt' . $this->newline;			$message .= 'Content-Type: text/html; charset="utf-8?' . $this->newline;			$message .= 'Content-Transfer-Encoding: 8bit' . $this->newline . $this->newline;			$message .= $this->html . $this->newline;			$message .= '–' . $boundary . '_alt–' . $this->newline;			$mail->AltBody = $this->text;			$mail->MsgHTML($this->html );		}		foreach ($this->attachments as $attachment) {			if (file_exists ($attachment['file'])) {				$mail->AddAttachment( $attachment['file']);				$handle = fopen ($attachment['file'], 'r');				$content = fread ($handle, filesize ($attachment['file']));				fclose($handle );				$message .= '–' . $boundary . $this->newline;				$message .= 'Content-Type: application/octetstream' . $this->newline;				$message .= 'Content-Transfer-Encoding: base64' . $this->newline;				$message .= 'Content-Disposition: attachment; filename="' . basename( $attachment['filename']) . '"' . $this->newline;				$message .= 'Content-ID: ' . $this->newline . $this->newline;				$message .= chunk_split (base64_encode( $content));			}		}		$message .= '–' . $boundary . '–' . $this->newline;		if ($this->protocol == 'mail') {			ini_set('sendmail_from' , $this->from);			if ($this->parameter) {				mail($to , $this->subject, $message , $header, $this->parameter);			} else {				mail($to , $this->subject, $message , $header);			}		} elseif ($this->protocol == 'smtp') {			$mail -> Username = $this->username;			$mail -> Password = $this->password;			$mail -> Port = $this->port;			if (strpos ($this->hostname, 'gmail')) {				$mail->SMTPSecure = 'ssl';			}			$mail->Host = $this->hostname;			$mail->IsSMTP();			$mail->SMTPAuth = true;			if (! $mail->Send()) {				error_log($mail->ErrorInfo);			}		}	}
}
?>