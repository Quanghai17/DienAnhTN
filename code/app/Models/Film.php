<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
  public function categories () {
    return $this->belongsToMany(\App\Models\FilmCategory::class, 'pivot_category_films', 'film_id', 'film_category_id');
  }

  public function types () {
    return $this->belongsToMany(\App\Models\FilmType::class, 'pivot_types_films', 'film_id', 'film_type_id');
  }

  public function authors () {
    return $this->belongsToMany(\App\Models\FilmAuthor::class, 'pivot_authors_films', 'film_id', 'film_author_id');
  }
}
