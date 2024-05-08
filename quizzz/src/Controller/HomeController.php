<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use App\Form\RegisterUserFormType;

class HomeController extends AbstractController
{
    #[Route('/home', name: 'app_home')]
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'Quizz Competition',
        ]);
    }

    #[Route('/create', name: 'register-user')]
    public function create(): Response
    {
        $form = $this->createForm(RegisterUserFormType::class);
        return $this->render('home/create.html.twig', [
            'form' => $form->createView(),
        ]);
    }

}
