<?php

use App\Http\Controllers\IndexController;
use App\Models\Setting;
use App\Models\ClubCard;

function settings($type) {
    $val = Setting::select('value')->where('type',$type)->first();
    return $val->value;
}

function isZillionMember(){
    $user = ClubCard::where('user_id',Auth::User()->id)->whereDate('expiry_date','>',date('Y-m-d'))->first();
    if($user){
        return true;
    }else{
        return false;
    }
}  

function isZillionCat($cat_id){
    if(in_array($cat_id, json_decode(settings('zcard_category')))){
        return true;
    }else{
        return false;
    }
}

function price($price,$cat_id){
    if(Auth::check() && isZillionMember() && isZillionCat($cat_id)){
        return $price*(settings('zcard_disc')/100);
    }else{
        return $price;
    }
}

function grade($percentage){
    if ($percentage >= 75){
        $grade = "A";
    }else if ($percentage >= 52.5 && $percentage < 75){
        $grade = "B";
    }else if ($percentage >= 52.5 && $percentage < 35){
        $grade = "C";
    }else{
        $grade = "Fail";
    }
    return $grade;
}