<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profil extends Model
{
    use HasFactory;

    protected $table='profil';
    protected $fillable=['nim','nama','email','no_php','jurusan', 'alamat'];
    protected $guarded=[];
    // Mass Assignemnt => karena tidak ada deklarasi field yang diperbolehkan untuk diinsert ke database
}
