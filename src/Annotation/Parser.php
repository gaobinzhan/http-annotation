<?php


namespace EasySwoole\HttpAnnotation\Annotation;


use EasySwoole\Annotation\Annotation;
use EasySwoole\HttpAnnotation\AnnotationTag\CircuitBreaker;
use EasySwoole\HttpAnnotation\AnnotationTag\Context;
use EasySwoole\HttpAnnotation\AnnotationTag\Di;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\Api;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiAuth;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiFail;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiGroup;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiGroupAuth;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiGroupDescription;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiRequestExample;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiResponseParam;
use EasySwoole\HttpAnnotation\AnnotationTag\DocTag\ApiSuccess;
use EasySwoole\HttpAnnotation\AnnotationTag\Method;
use EasySwoole\HttpAnnotation\AnnotationTag\Param;

class Parser
{
    protected $parser;

    public function getAnnotationParser():Annotation
    {
        if(!$this->parser){
            $annotation = new Annotation();
            $annotation->addParserTag(new Method());
            $annotation->addParserTag(new Param());
            $annotation->addParserTag(new Context());
            $annotation->addParserTag(new Di());
            $annotation->addParserTag(new CircuitBreaker());
            $annotation->addParserTag(new Api());
            $annotation->addParserTag(new ApiAuth());
            $annotation->addParserTag(new ApiFail());
            $annotation->addParserTag(new ApiGroup());
            $annotation->addParserTag(new ApiGroupAuth());
            $annotation->addParserTag(new ApiGroupDescription());
            $annotation->addParserTag(new ApiSuccess());
            $annotation->addParserTag(new ApiRequestExample());
            $annotation->addParserTag(new ApiResponseParam());
            $annotation->addAlias('ApiAuth','Param');
            $this->parser = $annotation;
        }
        return $this->parser;
    }

    public static function getFileDeclareClass(string $file):?string
    {
        $namespace = '';
        $class = NULL;
        $phpCode = file_get_contents($file);
        $tokens = token_get_all($phpCode);
        for ($i=0;$i<count($tokens);$i++) {
            if ($tokens[$i][0] === T_NAMESPACE) {
                for ($j=$i+1;$j<count($tokens); $j++) {
                    if ($tokens[$j][0] === T_STRING) {
                        $namespace .= '\\'.$tokens[$j][1];
                    } else if ($tokens[$j] === '{' || $tokens[$j] === ';') {
                        break;
                    }
                }
            }

            if ($tokens[$i][0] === T_CLASS) {
                for ($j=$i+1;$j<count($tokens);$j++) {
                    if ($tokens[$j] === '{') {
                        $class = $tokens[$i+2][1];
                    }
                }
            }
        }
        if(!empty($class)){
            if(!empty($namespace)){
                //去除第一个\
                $namespace = substr($namespace,1);
            }
            return $namespace.'\\'.$class;
        }else{
            return null;
        }
    }

    protected static function contentFormat(string $content)
    {
        $json = json_decode($content,true);
        if($json){
            $content = json_encode($json,JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);
        }else{
            libxml_disable_entity_loader(true);
            $xml = simplexml_load_string($content, 'SimpleXMLElement', LIBXML_NOERROR | LIBXML_NOCDATA);
            if($xml){
                $content = $xml->saveXML();
            }
        }
        return $content;
    }

    function getClassAnnotation(string $class)
    {
        $ref = new \ReflectionClass($class);
        $global = $this->getAnnotationParser()->getAnnotation($ref);

    }
}