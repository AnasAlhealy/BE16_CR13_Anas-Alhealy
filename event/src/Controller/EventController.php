<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Event;
use EventType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\HttpFoundation\Request;

class EventController extends AbstractController
{
    #[Route('/details/{id}', name: 'app_event_details')]
    public function details($id, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);


        return $this->render('event/details.html.twig', [
            'event' => $event
        ]);
    }

    #[Route('/create', name: 'app_event_create')]
    public function create(Request $request, ManagerRegistry $doctrine): Response
    {
        $event = new Event();
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('success', 'Event has been successfully created.');

            return $this->redirectToRoute('app_event');
        }

        return $this->render('event/create.html.twig', [
            'form' => $form->createView()
        ]);
    }

    #[Route('/edit/{id}', name: 'app_event_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('success', 'Event has been successfully updated.');

            return $this->redirectToRoute('app_event');
        }

        return $this->render('event/edit.html.twig', [
            'form' => $form->createView()
        ]);
    }

    #[Route('/delete/{id}', name: 'app_event_delete')]
    public function delete(Request $request, ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);
        $em = $doctrine->getManager();

        $em->remove($event);
        $em->flush();

        $this->addFlash('success', 'Event has been successfully deleted.');
        return $this->redirectToRoute('app_event');
    }

    #[Route('/{type}', name: 'app_event')]
    public function index(ManagerRegistry $doctrine, $type = null): Response
    {
        $repository = $doctrine->getRepository(Event::class);

        if ($type == null) {
            $events = $repository->findAll();
        } else {
            $events = $repository->findBy(['type' => $type]);
        }

        return $this->render('event/index.html.twig', [
            'events' => $events,
            'type' => $type,
        ]);
    }
}
