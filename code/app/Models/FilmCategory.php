<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FilmCategory extends Model
{
  public function films () {
    return $this->belongsToMany(\App\Models\Film::class, 'pivot_category_films', 'film_category_id', 'film_id');
  }
}
