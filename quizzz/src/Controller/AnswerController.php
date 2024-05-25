<?php

namespace App\Controller;

use App\Entity\Answer;
use App\Form\AnswerType;
use App\Repository\AnswerRepository;
use App\Repository\CategorieRepository;
use App\Repository\QuestionRepository;
use App\Repository\ReponseRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\HttpFoundation\Request;
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
    public function show(int $id, QuestionRepository $questionRepository, ReponseRepository $reponseRepository, AnswerRepository $answerRepository): Response
    {
        $question = $questionRepository->getQuestion($id);
        $reponses = $reponseRepository->getQuesReponse($id);
        $form = $this->createForm(AnswerType::class);
        $user = $this->getUser();
        $answers = [];
        if ($user) {
            $userId = $user->getId();
            $answers = $answerRepository->getAnswer($id, $userId);
        }
        $sheets = $answerRepository->getAnswerWithUsers($id);
        return $this->render('answer/show.html.twig', [
            'question' => $question,
            'reponses' => $reponses,
            'form' => $form->createView(),
            'answers' => $answers,
            'sheets' => $sheets,
        ]);
    }

    #[Route('/answer_store', name: 'app_answer_store')]
    public function store(Request $request, QuestionRepository $questionRepository, ReponseRepository $reponseRepository, EntityManagerInterface $entityManager)
    {
        $form = $this->createForm(AnswerType::class);
        $form->handleRequest($request);
        $questionId =  $request->request->get('id_question');
        // $reponseId = $request->request->get('id_reponse');
        $selectedResponseId = null;
        if ($request->request->has('id_reponse')) {
            $selectedResponseId = $request->request->get('id_reponse');
        }
        if (is_numeric($selectedResponseId)) {
            $reponseResult = $reponseRepository->getReponse($selectedResponseId);
            $resultValue = $reponseResult->getReponseExpected();
            $authId = $request->request->get('id_user');
            $answer = new Answer();
            $answer->setIdQuestion($questionId);
            $answer->setIdReponse($selectedResponseId);
            $answer->setIdUser($authId);
            $answer->setResult($resultValue);
            $entityManager->persist($answer);
            $entityManager->flush();
        } else {
            echo "Reponse is required";
        }
        $question = $questionRepository->getQuestion($questionId);
        $reponses = $reponseRepository->getQuesReponse($questionId);
        return $this->redirectToRoute('app_dashboard');
    }
}
