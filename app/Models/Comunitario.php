<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comunitario extends Model
{
    use HasFactory;

    protected $fillable = [
        'apellido_paterno', 'apellido_materno', 'nombres', 'numero_ci', 'expedicion_ci', 'numero_nurej', 'numero_celular', 'numero_hoja_ruta', 'cite_judicial', 'juzgado_judicial', 'fecha_judicail', 'numero_resolucion', 'fecha_resolucion', 'juzgado_audiencia', 'fecha_audiencia', 'tiempo_sentencia', 'periodo_sentencia', 'dias_sentencia', 'horas_sentencia', 'area_trabajo', 'lugar_trabajo', 'fecha_inicio', 'fecha_fin', 'incumplimiento', 'observaciones', 'informe_talento', 'hojaderuta', 'apersonamineto', 'planilla_asistencia', 'informe_mensual', 'informe_conclusion', 'informe_incumplimiento', 'informe_fiscal', 'fotocopia_carnet'
    ];

    protected $casts = [

    ];
}
