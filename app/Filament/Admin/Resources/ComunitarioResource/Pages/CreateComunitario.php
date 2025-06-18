<?php

namespace App\Filament\Admin\Resources\ComunitarioResource\Pages;

use App\Filament\Admin\Resources\ComunitarioResource;
use Filament\Resources\Pages\CreateRecord;

class CreateComunitario extends CreateRecord
{
    protected static string $resource = ComunitarioResource::class;

    protected function getHeaderActions(): array
    {
        return [

        ];
    }
}
