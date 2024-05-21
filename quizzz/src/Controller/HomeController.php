<?php

namespace App\Controller;

use App\Entity\Categorie;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use App\Form\RegisterUserFormType;
use App\Repository\CategorieRepository;
use App\Repository\QuestionRepository;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasher;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(QuestionRepository $questionRepository, CategorieRepository $categorieRepository): Response
    {
        $questions = $questionRepository->getAll();
        $categories = $categorieRepository->getAll();
        return $this->render('home/index.html.twig', [
            'controller_name' => 'Quizz Competition',
            'questions' => $questions,
            'categories' => $categories,
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

    #[Route('/store', name: 'store-user')]
    public function store(Request $request, EntityManagerInterface $entityManager, UserPasswordHasherInterface $hash)
    {
        $form = $this->createForm(RegisterUserFormType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $userData = $form->getData();

            $now = new \DateTimeImmutable();

            $user = new User();
            $user->setName($userData['name']);
            $user->setEmail($userData['email']);
            $user->setRoles(['user', 'admin']);
            $password = $hash->hashPassword($user, $userData['password']);
            $user->setPassword($password);
            $user->setCreatedAt($now);
            $entityManager->persist($user);
            $entityManager->flush();

            // Optionally, add a flash message or redirect to another page
            $this->addFlash('success', 'User created successfully.');

            // Redirect to a success page
            return $this->redirectToRoute('app_home');
        }
        return $this->redirectToRoute('app_home');
    }
}
