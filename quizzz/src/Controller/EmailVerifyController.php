<?php

namespace App\Controller;

use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Attribute\Route;

class EmailVerifyController extends AbstractController
{
    #[Route('/email/verify', name: 'app_email_verify')]
    public function index(): Response
    {
        return $this->render('email_verify/index.html.twig', [
            'controller_name' => 'EmailVerifyController',
        ]);
    }

    #[Route('/email/verify/send', name: 'app_email_verify_send')]
    public function sendMail(MailerInterface $mailer): Response
    {
        try {
            $email = (new Email())
                ->from('mailtrap@demomailtrap.com')
                ->to('ajanthan.hippop@gmail.com')
                ->subject('Your Email Subject')
                ->text('This is the plain text body of your email.');


            $email->html('<h1>This is the HTML body of your email!</h1>');

            $mailer->send($email);
            return new Response('mail send');
        } catch (Exception $e) {
            dd($e, $e->getMessage());
        }
    }
}
