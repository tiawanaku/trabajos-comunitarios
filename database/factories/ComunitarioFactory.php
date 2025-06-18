<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Comunitario>
 */
class ComunitarioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'apellido_paterno' => fake()->text(50),
            'apellido_materno' => fake()->text(50),
            'nombres' => fake()->text(50),
            'numero_ci' => fake()->randomNumber(),
            'expedicion_ci' => fake()->text(50),
            'numero_nurej' => fake()->text(50),
            'numero_celular' => fake()->randomNumber(),
            'numero_hoja_ruta' => fake()->text(50),
            'cite_judicial' => fake()->text(50),
            'juzgado_judicial' => fake()->text(50),
            'numero_resolucion' => fake()->randomNumber(),
            'juzgado_audiencia' => fake()->text(50),
            'tiempo_sentencia' => fake()->text(50),
            'periodo_sentencia' => fake()->text(50),
            'area_trabajo' => fake()->text(50),
            'lugar_trabajo' => fake()->text(50),
            'incumplimiento' => fake()->text(50),
            'observaciones' => fake()->text(50),
            'carnet' => fake()->text(50),
            'sentencia_resolucion' => fake()->text(50),
            'audiencia' => fake()->text(50),
            'acta_audiencia' => fake()->text(50),
            'oficio_judicial' => fake()->text(50),
            'informe_talento' => fake()->text(50),
            'hojaderuta' => fake()->text(50),
            'apersonamineto' => fake()->text(50),
            'planilla_asistencia' => fake()->text(50),
            'informe_mensual' => fake()->text(50),
            'informe_conclucion' => fake()->text(50),
            'informe_incumplimiento' => fake()->text(50),
            'informe_fiscal' => fake()->text(50),
            'fotocopia_carnet' => fake()->text(50),

        ];
    }
}
