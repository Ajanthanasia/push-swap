<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\UserRepository;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class RegisterController extends AbstractController
{
    #[Route('api/register', name: 'api_register', methods: ['post'])]
    public function register(Request $request, EntityManagerInterface $em, UserPasswordHasherInterface $hash, UserRepository $userRepository): JsonResponse
    {
        $data = json_decode($request->getContent(), true);
        $now = new DateTimeImmutable();
        if ($data['password'] == $data['confirm_password']) {
            $user = $userRepository->findOneUser($data['email']);
            if ($user != null) {
                return $this->json([
                    'status' => false,
                    'message' => 'Email already exists',
                ]);
            }
            $user = new User();
            $user->setUsername($data['name']);
            $user->setEmail($data['email']);
            $hashedPassword = $hash->hashPassword(
                $user,
                $data['password']
            );
            $user->setPassword($hashedPassword);
            $user->setRoles(['user']);
            $user->setCreatedAt($now);
            $user->setUpdatedAt($now);
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
