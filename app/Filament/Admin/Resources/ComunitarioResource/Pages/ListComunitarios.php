<?php

namespace App\Filament\Admin\Resources\ComunitarioResource\Pages;

use App\Filament\Admin\Resources\ComunitarioResource;
use App\Filament\Admin\Resources\ComunitarioResource\Widgets\Comunitarios;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListComunitarios extends ListRecords
{
    protected static string $resource = ComunitarioResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
      // Aquí incluyes tu widget personalizado
    protected function getHeaderWidgets(): array
    {
        return [
            Comunitarios::class,
        ];
    }
}
