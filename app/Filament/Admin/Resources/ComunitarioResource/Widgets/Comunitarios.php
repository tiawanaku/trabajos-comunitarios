<?php

namespace App\Filament\Admin\Resources\ComunitarioResource\Widgets;

use App\Models\Comunitario;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget as BaseWidget;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget\Stat;

class Comunitarios extends BaseWidget
{
   protected function getStats(): array
    {
        // Agrupa por lugar_trabajo y cuenta cuántos hay en cada uno
        $datos = Comunitario::select('lugar_trabajo')
            ->selectRaw('COUNT(*) as total')
            ->groupBy('lugar_trabajo')
            ->get();

        // Crea una tarjeta por cada lugar_trabajo
        return $datos->map(function ($dato) {
            return Stat::make("{$dato->lugar_trabajo}", $dato->total)
                ->description('Total de personas')
                ->descriptionIcon('heroicon-m-users') // Ícono opcional
                ->color('success'); // Puedes usar info, success, danger, warning, etc.
        })->toArray();
    }
}
