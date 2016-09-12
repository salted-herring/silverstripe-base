<?php

class ApisedExt extends Extension {
    public function format($map = null) {
        if (empty($map)) {
            $data = array(
                'id'    =>  $this->ID
            );
            
            if ($this->owner->hasField('Title')) {
                $data['title']  =   $this->owner->Title;
            }
            
        } else {
            $data = array();
            foreach ($map as $key => $value) {
                if ($this->hasField($value)) {
                    $data[$key] = $this->$value;
                } else if (method_exists($this, $value)) {
                    $data[$key] = $this->$value();
                }
            }
        }
        
        return $data;       
    }
}