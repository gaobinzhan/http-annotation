<?php


namespace EasySwoole\HttpAnnotation\AnnotationTag;


use EasySwoole\Annotation\AbstractAnnotationTag;

/**
 * Class ApiFail
 * @package EasySwoole\HttpAnnotation\AnnotationTag
 * @Annotation
 */
class ApiFail extends ApiDescription
{
    /**
     * @var string text|file
     */
    public $type = 'text';

    public function tagName(): string
    {
        return 'ApiFail';
    }
}