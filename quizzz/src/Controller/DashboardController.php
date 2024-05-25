<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class DashboardController extends AbstractController
{
    #[Route('/dashboard', name: 'app_dashboard')]
    public function index(EntityManagerInterface $entityManager, UserRepository $userRepository): Response
    {
        $now = new \DateTimeImmutable();
        $userData = $this->getUser();
        $userId = $userData->getId();
        $userEntity = $userRepository->findUser($userId);
        $userEntity->setLoginAt($now);
        $entityManager->persist($userEntity);
        $entityManager->flush();
        return $this->render('dashboard/index.html.twig');
    }
}
