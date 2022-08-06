<?php

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ButtonType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\ResetType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            ->add('date', DateTimeType::class)
            ->add('description', TextType::class)
            ->add('image', UrlType::class)
            ->add('capacity', NumberType::class)
            ->add('contactEmail', EmailType::class)
            ->add('phone', TextType::class)
            ->add('address', TextType::class)
            ->add('url', UrlType::class)
            ->add('type', ChoiceType::class, [
                'choices' => [
                    'Movie' => 'movie',
                    'Sport' => 'sport',
                    'Music' => 'music',
                    'Theater' => 'theater'
                ]
            ])
            ->add('save', SubmitType::class)
            ->add('Reset', ResetType::class);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
