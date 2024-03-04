<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{

    protected $table = 'project';

    public function project(){
        return $this->hasMany('App\Models\Project','project_id');
    }

}
