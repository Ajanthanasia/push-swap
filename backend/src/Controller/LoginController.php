<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\PasswordHasher\PasswordHasherInterface;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Core\User\UserProviderInterface;

// use Symfony\Component\Routing\Annotation\Route;

class LoginController extends AbstractController
{
    #[Route('api/login-user', name: 'api_login_user', methods: ['post'])]
    public function login(Request $request, UserRepository $userRepository): JsonResponse
    {
        $data = json_decode($request->getContent(), true);
        $email = $data['email'] ?? null;
        $password = $data['password'] ?? null;
        if (!$email || !$password) {
            return new JsonResponse(['status' => false, 'message' => 'Invalid credentials'], JsonResponse::HTTP_BAD_REQUEST);
        } else {
            $user = $userRepository->findOneUser($email);

            if ($user == null) {
                return new JsonResponse(['status' => false, 'message' => 'User does not exists'], JsonResponse::HTTP_BAD_REQUEST);
            } else {
                if (password_verify($password, $user->getPassword())) {
                    return $this->json([
                        'status' => true,
                        'message' => 'Logined Successfully!',
                        'user_id' => $user->getId(),
                    ]);
                } else {
                    return new JsonResponse(['status' => false, 'message' => 'User Passwords does not correct'], JsonResponse::HTTP_BAD_REQUEST);
                }
            }
        }
    }
}
