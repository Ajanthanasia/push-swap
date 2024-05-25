<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class AdminAccountsController extends AbstractController
{
    #[Route('/admin/accounts', name: 'app_admin_accounts')]
    public function index(UserRepository $userRepository): Response
    {
        $users = $userRepository->getUsers();
        return $this->render('admin_accounts/index.html.twig', [
            'users' => $users,
        ]);
    }

    #[Route('/admin/accounts/destroy/{id}', name: 'app_admin_accounts_destroy')]
    public function destroy(int $id, UserRepository $userRepository, EntityManagerInterface $entityManager): Response
    {
        $user = $userRepository->findUser($id);
        $entityManager->remove($user);
        $entityManager->flush();
        return $this->redirectToRoute('app_admin_accounts');
    }
}
