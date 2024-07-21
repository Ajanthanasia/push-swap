<?php

namespace App\Controller;

use App\Repository\UserRepository;
use DateTimeImmutable;
use Doctrine\ORM\EntityManagerInterface;
use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Attribute\Route;

class UsersController extends AbstractController
{
    #[Route('api/users', name: 'api_app_users', methods: ['get'])]
    public function index(UserRepository $userRepository): JsonResponse
    {
        try {
            $users = $userRepository->getAllUsers();
            return $this->json([
                'status' => true,
                'message' => 'success',
                'data' => $users,
            ], 200);
        } catch (Exception) {
            return new JsonResponse([
                "status" => false,
                'message' => 'Error Happened'
            ], 500);
        }
    }

    #[Route('api/users/show', name: 'api_app_users_show', methods: ['get'])]
    public function show(Request $request, UserRepository $userRepository): JsonResponse
    {
        try {
            $data = json_decode($request->getContent(), true);
            $id = $data['id'] ?? null;
            $user = $userRepository->showUserById($id);
            if ($user == null) {
                return new JsonResponse([
                    "status" => false,
                    'message' => 'data does not exists'
                ], 500);
            } else {
                return $this->json([
                    'status' => true,
                    'message' => 'success',
                    'data' => $user
                ]);
            }
        } catch (Exception) {
            return new JsonResponse([
                "status" => false,
                'message' => 'Error Happened'
            ], 500);
        }
    }

    #[Route('api/users/update', name: 'api_app_users_update', methods: ['post'])]
    public function update(Request $request, UserRepository $userRepository, EntityManagerInterface $em): JsonResponse
    {
        try {
            $data = json_decode($request->getContent(), true);
            $now = new DateTimeImmutable();
            $id = $data['id'] ?? null;
            $CheckMailUnique = $userRepository->findOneUser($data['email']);
            if ($CheckMailUnique != null) {
                return $this->json([
                    'status' => false,
                    'message' => 'Email already exists',
                ]);
            }
            $user = $userRepository->showUserById($id);
            if ($user == null) {
                return $this->json([
                    'status' => false,
                    'message' => 'User account does not exists',
                ]);
            }
            $user->setUsername($data['username']);
            $user->setEmail($data['email']);
            $user->setRoles($data['roles']);
            $user->setUpdatedAt($now);
            $em->persist($user);
            $em->flush();
            return $this->json([
                'status' => true,
                'message' => 'Successfully Updated',
            ], 200);
        } catch (Exception) {
            return new JsonResponse([
                "status" => false,
                'message' => 'Error Happened'
            ], 500);
        }
    }

    #[Route('api/users/destroy', name: 'api_app_users_destroy', methods: ['delete'])]
    public function destroy(Request $request, UserRepository $userRepository, EntityManagerInterface $em): JsonResponse
    {
        try {
            $data = json_decode($request->getContent(), true);
            $id = $data['id'] ?? null;
            $user = $userRepository->showUserById($id);
            if ($user == null) {
                return $this->json([
                    'status' => false,
                    'message' => 'User account does not exists',
                ]);
            }
            $em->remove($user);
            $em->flush();
            return $this->json([
                'status' => true,
                'message' => 'Successfully Deleted',
            ], 200);
        } catch (Exception) {
            return new JsonResponse([
                "status" => false,
                'message' => 'Error Happened'
            ], 500);
        }
    }
}
