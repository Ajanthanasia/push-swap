<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use App\Repository\QuestionRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class AnswerController extends AbstractController
{
    #[Route('/answer/{id}', name: 'app_answer')]
    public function index(int $id, CategorieRepository $categorieRepository, QuestionRepository $questionRepository): Response
    {
        $categorie = $categorieRepository->getCategorie($id);
        $questions = $questionRepository->getCategorieQuestions($id);
        return $this->render('answer/index.html.twig', [
            'controller_name' => 'AnswerController',
            'categorie' => $categorie,
            'questions' => $questions,
        ]);
    }

    #[Route('/answer/show/{id}', name: 'app_answer_show')]
    public function show(int $id, QuestionRepository $questionRepository)
    {
        $question = $questionRepository->getQuestion($id);
        return $this->render('answer/show.html.twig', [
            'question' => $question,
        ]);
    }
}
