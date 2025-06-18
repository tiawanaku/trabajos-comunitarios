<?php

namespace App\Filament\Admin\Resources\ComunitarioResource\Pages;

use App\Filament\Admin\Resources\ComunitarioResource;
use Filament\Resources\Pages\EditRecord;

class EditComunitario extends EditRecord
{
    protected static string $resource = ComunitarioResource::class;

    protected function getHeaderActions(): array
    {
        return [

        ];
    }
}