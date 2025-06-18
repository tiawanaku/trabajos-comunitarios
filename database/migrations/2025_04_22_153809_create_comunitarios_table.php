<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('comunitarios', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('apellido_paterno');
            $table->string('apellido_materno');
            $table->string('nombres');
            $table->integer('numero_ci');
            $table->string('expedicion_ci');
            $table->string('numero_nurej');
            $table->integer('numero_celular');
            $table->string('numero_hoja_ruta');
            $table->string('cite_judicial');
            $table->string('juzgado_judicial');
            $table->date('fecha_judicail');
            $table->string('numero_resolucion');
            $table->date('fecha_resolucion');
            $table->string('juzgado_audiencia');
            $table->date('fecha_audiencia');
            $table->string('tiempo_sentencia');
            $table->string('periodo_sentencia');
            $table->enum('dias_sentencia', [
                'Lunes', 
                'Martes', 
                'Miercoles', 
                'Jueves', 
                'Viernes', 
                'Sabado', 
                'Domingo'
            ]);
            $table->String('horas_sentencia');
            $table->string('area_trabajo');
            $table->enum('lugar_trabajo', [
                'Nayra Punku', 
                'Cementerio Villa Ingenio', 
                'Cementerio Mercedario', 
                'Cementerio Ex Tarapaca'
            ]);
            $table->date('fecha_inicio');
            $table->date('fecha_fin');
            $table->string('incumplimiento');
            $table->string('observaciones');
            $table->string('informe_talento')->nullable();
            $table->string('hojaderuta')->nullable();
            $table->string('apersonamineto')->nullable();
            $table->string('planilla_asistencia')->nullable();
            $table->string('informe_mensual')->nullable();
            $table->string('informe_conclusion')->nullable();
            $table->string('informe_incumplimiento')->nullable();
            $table->string('informe_fiscal')->nullable();
            $table->string('fotocopia_carnet')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comunitarios');
    }
};
