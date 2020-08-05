<?php


namespace EasySwoole\HttpAnnotation\Annotation;

use EasySwoole\HttpAnnotation\AnnotationTag\Api;
use EasySwoole\HttpAnnotation\AnnotationTag\ApiDescription;
use EasySwoole\HttpAnnotation\AnnotationTag\CircuitBreaker;
use EasySwoole\HttpAnnotation\AnnotationTag\InjectParamsContext;
use EasySwoole\HttpAnnotation\AnnotationTag\Method;

class MethodAnnotation extends AnnotationBean
{
    protected $__name;

    protected $api;
    protected $apiAuth = [];
    protected $apiDescription;
    protected $apiFail = [];
    protected $apiFailParam = [];
    protected $apiRequestExample = [];
    protected $apiSuccess = [];
    protected $apiSuccessParam = [];
    protected $circuitBreaker;
    protected $injectParamsContext;
    protected $method;
    protected $param = [];

    function __construct(string $name)
    {
        $this->__name = $name;
    }

    function getApiTag():?Api
    {
        return $this->api;
    }

    function getApiDescriptionTag():?ApiDescription
    {
        return $this->apiDescription;
    }

    function getCircuitBreakerTag():?CircuitBreaker
    {
        return $this->circuitBreaker;
    }

    function getInjectParamsContext():?InjectParamsContext
    {
        return $this->injectParamsContext;
    }

    function getMethodTag():?Method
    {
        return $this->method;
    }

    public function getApiAuth(?string $name = null)
    {
        if($name){
            if(isset($this->apiAuth[$name])){
                return $this->apiAuth[$name];
            }
            return null;
        }
        return $this->apiAuth;
    }

    /**
     * @return array
     */
    public function getApiFail(): array
    {
        return $this->apiFail;
    }


    public function getApiFailParam(?string $name = null)
    {
        if($name){
            if(isset($this->apiFailParam[$name])){
                return $this->apiFailParam[$name];
            }
            return null;
        }
        return $this->apiFailParam;
    }

    /**
     * @return array
     */
    public function getApiRequestExample(): array
    {
        return $this->apiRequestExample;
    }

    /**
     * @return array
     */
    public function getApiSuccess(): array
    {
        return $this->apiSuccess;
    }

    /**
     * @return array
     */
    public function getApiSuccessParam(): array
    {
        return $this->apiSuccessParam;
    }

    /**
     * @return array
     */
    public function getParam(): array
    {
        return $this->param;
    }

    /**
     * @return mixed
     */
    public function getMethodName()
    {
        return $this->__name;
    }
}