<?php

namespace App\Controller;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\Request;

class RegisterController extends AbstractController
{
    #[Route('apij', name: 'app_register')]
    public function index(): Response
    {
        // return $this->render('register/index.html.twig', [
        //     'controller_name' => 'RegisterController',
        // ]);
        dd('hi');
    }

    #[Route('api/register', name: 'api_register', methods: ['post'])]
    public function register(Request $request, EntityManagerInterface $em): Response
    {
        $data = json_decode($request->getContent(), true);
        if ($data['password'] == $data['confirm_password']) {
            $user = new User();
            $user->setName($data['name']);
            $user->setEmail($data['email']);
            $user->setPassword($data['password']);
            $em->persist($user);
            $em->flush();
            return $this->json([
                'status' => true,
                'message' => 'Successfully created',
            ]);
        } else {
            return $this->json([
                'status' => false,
                'message' => 'Passwords does not matched.',
            ]);
        }
    }
}
