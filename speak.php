<?php
include 'smarty.php';
require_once('recaptchalib.php');
require_once('private.php');

$publickey = '6LeIgs0SAAAAAOp5JFhYKrHNCUqu_d_hNSjP2HbV';
$captcha = recaptcha_get_html($publickey);
$smarty->assign('captcha', $captcha);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $required = array('name', 'email', 'topic', 'description');

    $error = false;
    foreach($required as $field) {
        if (empty($_POST[$field])) {
            $error = true;
        }
    }

    $name = $_POST['name'];
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $error = $email == false or $error;
    $topic = join(', ', $_POST['topic']);
    $description = $_POST['description'];

    $resp = recaptcha_check_answer ($privatekey,
            $_SERVER["REMOTE_ADDR"],
            $_POST["recaptcha_challenge_field"],
            $_POST["recaptcha_response_field"]);

    if (!$resp->is_valid or $error) {
        $smarty->assign("name", $name); 
        $smarty->assign("email", $email);
        $smarty->assign("topic", $topic);
        $smarty->assign("description", $description);
        $captcha = recaptcha_get_html($publickey, $resp->error);
        $smarty->assign("error", "Please re-enter the captcha.");
        $smarty->display('speak.tpl');
    } else {
        $to = 'justinvh@gmail.com,chris.vanhorne@gmail.com,chaoslichen@gmail.com,andrewurman@gmail.com';
        $subject = '[ACM] Speaking Request from ' . $email;
        $message = "The following person wants to talk during an ACM meeting:\n";
        $message .= "Name: " . $name . "\nEmail: " . $email;
        $message .= "\nTopic: " . $topic . "\nDescription: " . $description;
        $message = wordwrap($message, 70);
        $headers = 'From: teamsters-noreply@uofa.acm.org' . "\r\n" .
            'Reply-To: teamsters-noreply@uofa.acm.org' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();
        mail($to, $subject, $message, $headers);
        $smarty->display('speak-sent.tpl');
    }
} else {
    $smarty->display('speak.tpl');
}
?>
