<?php

namespace App\Repository;

use App\Entity\Answer;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Answer>
 */
class AnswerRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Answer::class);
    }

    //    /**
    //     * @return Answer[] Returns an array of Answer objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('a.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }

    //    public function findOneBySomeField($value): ?Answer
    //    {
    //        return $this->createQueryBuilder('a')
    //            ->andWhere('a.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
    public function getAnswer(int $questionId, int $userId)
    {
        $data = $this->createQueryBuilder('p')
            ->where('p.id_question = :id')
            ->andWhere('p.id_user = :user')
            ->setParameter('id', $questionId)
            ->setParameter('user', $userId)
            ->getQuery()
            ->getResult();
        return $data;
    }

    public function getAnswerWithUsers(int $id)
    {
        $data = $this->createQueryBuilder('p')
            ->addSelect('u.name AS name')
            ->addSelect('r.reponse as reponse')
            ->innerJoin('App\Entity\User', 'u', 'WITH', 'p.id_user = u.id')
            ->innerJoin('App\Entity\Reponse', 'r', 'WITH', 'p.id_reponse = r.id')
            ->where('p.id_question = :id')
            ->setParameter('id', $id)
            ->getQuery()
            ->getResult();
        return $data;
    }
}
