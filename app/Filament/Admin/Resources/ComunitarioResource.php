<?php

namespace App\Filament\Admin\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\Comunitario;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\Storage;
use App\Filament\Admin\Resources\ComunitarioResource\Pages;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TextArea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\TimePicker;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\Action;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\Filter;
use Illuminate\Database\Eloquent\Builder;

class ComunitarioResource extends Resource
{
    protected static ?string $model = Comunitario::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Wizard::make([
                    // Paso 1: Datos Personales
                    Forms\Components\Wizard\Step::make('Datos Personales')
                        ->icon('heroicon-o-user')
                        ->schema([
                            Grid::make(3)->schema([
                                TextInput::make('apellido_paterno')
                                    ->label('Apellido Paterno')
                                    ->required()
                                    ->prefixIcon('heroicon-o-user'),

                                TextInput::make('apellido_materno')
                                    ->label('Apellido Materno')
                                    ->required()
                                    ->prefixIcon('heroicon-o-user'),

                                TextInput::make('nombres')
                                    ->label('Nombres')
                                    ->required()
                                    ->prefixIcon('heroicon-o-user'),

                                TextInput::make('numero_ci')
                                    ->label('Número de CI')
                                    ->required()
                                    ->numeric()
                                    ->prefixIcon('heroicon-o-identification'),

                                Select::make('expedicion_ci')
                                    ->label('Expedición CI')
                                    ->required()
                                    ->options([
                                        'LP' => 'La Paz',
                                        'CB' => 'Cochabamba',
                                        'SC' => 'Santa Cruz',
                                        'OR' => 'Oruro',
                                        'PT' => 'Potosi',
                                        'CH' => 'Chuquisaca',
                                        'TJ' => 'Tarija',
                                        'BE' => 'Beni',
                                        'PD' => 'Pando',
                                    ])
                                    ->searchable()
                                    ->prefixIcon('heroicon-o-map'),

                                TextInput::make('numero_celular')
                                    ->label('Número de Celular')
                                    ->numeric()
                                    ->tel()
                                    ->prefixIcon('heroicon-o-device-phone-mobile'),
                            ]),
                        ]),

                    // Paso 2: Datos del Proceso
                    Forms\Components\Wizard\Step::make('Datos del Proceso')
                        ->icon('heroicon-o-folder-open')
                        ->schema([
                            Grid::make(3)->schema([
                                TextInput::make('numero_nurej')
                                    ->label('Número NUREJ')
                                    ->prefixIcon('heroicon-o-scale'),

                                TextInput::make('numero_hoja_ruta')
                                    ->label('Número Hoja de Ruta')
                                    ->prefixIcon('heroicon-o-document-text'),

                                TextInput::make('cite_judicial')
                                    ->label('Cite de Oficio Judicial')
                                    ->prefixIcon('heroicon-o-scale'),

                                TextInput::make('juzgado_judicial')
                                    ->label('Juzgado de Oficio Judicial')
                                    ->prefixIcon('heroicon-o-building-office'),

                                DatePicker::make('fecha_judicail')
                                    ->label('Fecha de Oficio Judicial'),

                                TextInput::make('numero_resolucion')
                                    ->label('Número Resolución')
                                    ->prefixIcon('heroicon-o-document-check'),

                                DatePicker::make('fecha_resolucion')
                                    ->label('Fecha Resolución'),

                                TextInput::make('juzgado_audiencia')
                                    ->label('Juzgado de Audiencia')
                                    ->prefixIcon('heroicon-o-building-office'),

                                DatePicker::make('fecha_audiencia')
                                    ->label('Fecha de Audiencia')
                                    ->prefixIcon('heroicon-o-calendar'),
                            ]),
                        ]),

                    // Paso 3: Sentencia y Horarios
                    Forms\Components\Wizard\Step::make('Sentencia y Horarios')
                        ->icon('heroicon-o-scale')
                        ->schema([
                            Grid::make(3)->schema([
                                TextInput::make('tiempo_sentencia')
                                    ->label('Tiempo de Sentencia')
                                    ->prefixIcon('heroicon-o-clock'),

                                TextInput::make('periodo_sentencia')
                                    ->label('Periodo de Sentencia')
                                    ->prefixIcon('heroicon-o-clock'),

                                Select::make('dias_sentencia')
                                    ->label('Día de Sentencia')
                                    ->options([
                                        'Lunes' => 'Lunes',
                                        'Martes' => 'Martes',
                                        'Miercoles' => 'Miércoles',
                                        'Jueves' => 'Jueves',
                                        'Viernes' => 'Viernes',
                                        'Sabado' => 'Sábado',
                                        'Domingo' => 'Domingo',
                                    ])
                                    ->required()
                                    ->prefixIcon('heroicon-o-calendar'),

                                TextInput::make('horas_sentencia')
                                    ->label('Horas de Sentencia')
                                    ->prefixIcon('heroicon-o-clock'),
                            ]),
                        ]),

                    // Paso 4: Trabajo Comunitario
                    Forms\Components\Wizard\Step::make('Trabajo Comunitario')
                        ->icon('heroicon-o-briefcase')
                        ->schema([
                            Grid::make(3)->schema([
                                TextInput::make('area_trabajo')
                                    ->label('Área de Trabajo')
                                    ->prefixIcon('heroicon-o-wrench-screwdriver'),

                                Select::make('lugar_trabajo')
                                    ->label('Lugar de Trabajo')
                                    ->options([
                                        'Nayra Punku' => 'Nayra Punku',
                                        'Cementerio Villa Ingenio' => 'Cementerio Villa Ingenio',
                                        'Cementerio Mercedario' => 'Cementerio Mercedario',
                                        'Cementerio Ex Tarapaca' => 'Cementerio Ex Tarapaca',                     
                                    ])
                                    ->required()
                                    ->prefixIcon('heroicon-o-map-pin'),

                                DatePicker::make('fecha_inicio')
                                    ->label('Fecha de Inicio'),

                                DatePicker::make('fecha_fin')
                                    ->label('Fecha Fin Aproximadamente'),

                                TextInput::make('incumplimiento')
                                    ->label('Incumplimiento')
                                    ->prefixIcon('heroicon-o-exclamation-triangle'),

                                TextArea::make('observaciones')
                                    ->label('Observaciones')
                                    ->rows(3)
                                    ->columnSpan(3),
                            ]),
                        ]),

                    // Paso 5: Archivos PDF
                    Forms\Components\Wizard\Step::make('Archivos PDF')
                        ->icon('heroicon-o-document')
                        ->schema([
                            Grid::make(2)->schema([
                                FileUpload::make('informe_talento')
                                    ->label('Informe Talento Humano')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('hojaderuta')
                                    ->label('Hoja de Ruta')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('apersonamineto')
                                    ->label('Apersonamiento')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('planilla_asistencia')
                                    ->label('Planilla de Asistencia')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('informe_mensual')
                                    ->label('Informe Mensual')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('informe_conclusion')
                                    ->label('Informe de Conclusión')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('informe_incumplimiento')
                                    ->label('Informe de Incumplimiento')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('informe_fiscal')
                                    ->label('Informe de Oficio Fiscal y Audiencia')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),

                                FileUpload::make('fotocopia_carnet')
                                    ->label('Fotocopia de Carnet')
                                    ->directory('comunitarios')
                                    ->acceptedFileTypes(['application/pdf'])
                                    ->preserveFilenames(),
                            ]),
                        ]),
                ])->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // Datos personales
                TextColumn::make('full_name')
                    ->label('Nombre Completo')
                    ->getStateUsing(fn ($record) => 
                        trim($record->apellido_paterno . ' ' . $record->apellido_materno . ' ' . $record->nombres)
                    )
                    ->searchable(['apellido_paterno', 'apellido_materno', 'nombres']),

                TextColumn::make('numero_ci')
                    ->label('Número CI')
                    ->searchable(),

                TextColumn::make('expedicion_ci')
                    ->label('Expedición CI')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('numero_celular')
                    ->label('Celular')
                    ->searchable(),

                // Datos del proceso
                TextColumn::make('numero_nurej')
                    ->label('Número NUREJ')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('numero_hoja_ruta')
                    ->label('Hoja de Ruta')
                    ->searchable(),

                TextColumn::make('cite_judicial')
                    ->label('Cite Judicial')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('juzgado_judicial')
                    ->label('Juzgado Judicial')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('fecha_judicail')
                    ->label('Fecha Judicial')
                    ->date()
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('numero_resolucion')
                    ->label('Número Resolución')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('fecha_resolucion')
                    ->label('Fecha Resolución')
                    ->date()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('juzgado_audiencia')
                    ->label('Juzgado Audiencia')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('fecha_audiencia')
                    ->label('Fecha Audiencia')
                    ->date()
                    ->toggleable(isToggledHiddenByDefault: true),

                // Sentencia
                TextColumn::make('tiempo_sentencia')
                    ->label('Tiempo Sentencia')
                    ->searchable(),

                TextColumn::make('periodo_sentencia')
                    ->label('Periodo Sentencia')
                    ->searchable(),

                TextColumn::make('dias_sentencia')
                    ->label('Día Sentencia')
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('horas_sentencia')
                    ->label('Horas Sentencia')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                // Trabajo comunitario
                TextColumn::make('area_trabajo')
                    ->label('Área Trabajo')
                    ->searchable(),

                TextColumn::make('lugar_trabajo')
                    ->label('Lugar Trabajo')
                    ->searchable()
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'Nayra Punku' => 'success',
                        'Cementerio Villa Ingenio' => 'info',
                        'Cementerio Mercedario' => 'warning',
                        'Cementerio Ex Tarapaca' => 'danger',
                        default => 'gray',
                    }),

                TextColumn::make('fecha_inicio')
                    ->label('Fecha Inicio')
                    ->date()
                    ->searchable(),

                TextColumn::make('fecha_fin')
                    ->label('Fecha Fin')
                    ->date()
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('incumplimiento')
                    ->label('Incumplimiento')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('observaciones')
                    ->label('Observaciones')
                    ->limit(50)
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                // Archivos PDF con estado
                TextColumn::make('informe_talento')
                    ->label('Informe Talento')
                    ->getStateUsing(fn ($record) => 
                        $record->informe_talento 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('hojaderuta')
                    ->label('Hoja de Ruta')
                    ->getStateUsing(fn ($record) => 
                        $record->hojaderuta 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('apersonamineto')
                    ->label('Apersonamiento')
                    ->getStateUsing(fn ($record) => 
                        $record->apersonamineto 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('planilla_asistencia')
                    ->label('Planilla Asistencia')
                    ->getStateUsing(fn ($record) => 
                        $record->planilla_asistencia 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('informe_mensual')
                    ->label('Informe Mensual')
                    ->getStateUsing(fn ($record) => 
                        $record->informe_mensual 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('informe_conclusion')
                    ->label('Informe Conclusión')
                    ->getStateUsing(fn ($record) => 
                        $record->informe_conclusion 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('informe_incumplimiento')
                    ->label('Informe Incumplimiento')
                    ->getStateUsing(fn ($record) => 
                        $record->informe_incumplimiento 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('informe_fiscal')
                    ->label('Informe Fiscal')
                    ->getStateUsing(fn ($record) => 
                        $record->informe_fiscal 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('fotocopia_carnet')
                    ->label('Fotocopia Carnet')
                    ->getStateUsing(fn ($record) => 
                        $record->fotocopia_carnet 
                            ? '<span style="color: green;">✓ Disponible</span>' 
                            : '<span style="color: red;">✗ No disponible</span>'
                    )
                    ->html()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                // Filtro principal por lugar de trabajo
                SelectFilter::make('lugar_trabajo')
                    ->label('Lugar de Trabajo')
                    ->options([
                        'Nayra Punku' => 'Nayra Punku',
                        'Cementerio Villa Ingenio' => 'Cementerio Villa Ingenio',
                        'Cementerio Mercedario' => 'Cementerio Mercedario',
                        'Cementerio Ex Tarapaca' => 'Cementerio Ex Tarapaca',
                    ])
                    ->searchable()
                    ->preload(),

                // Filtros adicionales por expedición CI
                SelectFilter::make('expedicion_ci')
                    ->label('Expedición CI')
                    ->options([
                        'LP' => 'La Paz',
                        'CB' => 'Cochabamba',
                        'SC' => 'Santa Cruz',
                        'OR' => 'Oruro',
                        'PT' => 'Potosi',
                        'CH' => 'Chuquisaca',
                        'TJ' => 'Tarija',
                        'BE' => 'Beni',
                        'PD' => 'Pando',
                    ])
                    ->searchable()
                    ->preload(),

                // Filtro por día de sentencia
                SelectFilter::make('dias_sentencia')
                    ->label('Día de Sentencia')
                    ->options([
                        'Lunes' => 'Lunes',
                        'Martes' => 'Martes',
                        'Miercoles' => 'Miércoles',
                        'Jueves' => 'Jueves',
                        'Viernes' => 'Viernes',
                        'Sabado' => 'Sábado',
                        'Domingo' => 'Domingo',
                    ])
                    ->searchable()
                    ->preload(),

                // Filtro por rango de fechas de inicio
                Filter::make('fecha_inicio')
                    ->form([
                        DatePicker::make('fecha_desde')
                            ->label('Fecha de Inicio Desde'),
                        DatePicker::make('fecha_hasta')
                            ->label('Fecha de Inicio Hasta'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['fecha_desde'],
                                fn (Builder $query, $date): Builder => $query->whereDate('fecha_inicio', '>=', $date),
                            )
                            ->when(
                                $data['fecha_hasta'],
                                fn (Builder $query, $date): Builder => $query->whereDate('fecha_inicio', '<=', $date),
                            );
                    })
                    ->indicateUsing(function (array $data): array {
                        $indicators = [];
                        if ($data['fecha_desde'] ?? null) {
                            $indicators[] = 'Inicio desde: ' . $data['fecha_desde'];
                        }
                        if ($data['fecha_hasta'] ?? null) {
                            $indicators[] = 'Inicio hasta: ' . $data['fecha_hasta'];
                        }
                        return $indicators;
                    }),

                // Filtro para casos con/sin incumplimiento
                Filter::make('con_incumplimiento')
                    ->label('Con Incumplimiento')
                    ->query(fn (Builder $query): Builder => $query->whereNotNull('incumplimiento')->where('incumplimiento', '!=', '')),

                Filter::make('sin_incumplimiento')
                    ->label('Sin Incumplimiento')
                    ->query(fn (Builder $query): Builder => $query->where(function ($query) {
                        $query->whereNull('incumplimiento')->orWhere('incumplimiento', '');
                    })),
            ])
            ->headerActions([
                // Botones de filtro rápido en el header
                Action::make('filtro_nayra_punku')
                    ->label('Nayra Punku')
                    ->icon('heroicon-o-building-office')
                    ->color('success')
                    ->action(function ($livewire) {
                        $livewire->tableFilters['lugar_trabajo']['value'] = 'Nayra Punku';
                        $livewire->updatedTableFilters();
                    }),

                Action::make('filtro_villa_ingenio')
                    ->label('Villa Ingenio')
                    ->icon('heroicon-o-building-office')
                    ->color('info')
                    ->action(function ($livewire) {
                        $livewire->tableFilters['lugar_trabajo']['value'] = 'Cementerio Villa Ingenio';
                        $livewire->updatedTableFilters();
                    }),

                Action::make('filtro_mercedario')
                    ->label('Mercedario')
                    ->icon('heroicon-o-building-office')
                    ->color('warning')
                    ->action(function ($livewire) {
                        $livewire->tableFilters['lugar_trabajo']['value'] = 'Cementerio Mercedario';
                        $livewire->updatedTableFilters();
                    }),

                Action::make('filtro_ex_tarapaca')
                    ->label('Ex Tarapaca')
                    ->icon('heroicon-o-building-office')
                    ->color('danger')
                    ->action(function ($livewire) {
                        $livewire->tableFilters['lugar_trabajo']['value'] = 'Cementerio Ex Tarapaca';
                        $livewire->updatedTableFilters();
                    }),

                Action::make('limpiar_filtros')
                    ->label('Mostrar Todos')
                    ->icon('heroicon-o-x-mark')
                    ->color('gray')
                    ->action(function ($livewire) {
                        $livewire->tableFilters = [];
                        $livewire->updatedTableFilters();
                    }),
            ])
            ->actions([
                ActionGroup::make([
                    Action::make('download_informe_talento')
                        ->label('Informe Talento')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('success')
                        ->url(fn ($record) => $record->informe_talento ? Storage::url($record->informe_talento) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->informe_talento)),

                    Action::make('download_hojaderuta')
                        ->label('Hoja de Ruta')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('info')
                        ->url(fn ($record) => $record->hojaderuta ? Storage::url($record->hojaderuta) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->hojaderuta)),

                    Action::make('download_apersonamineto')
                        ->label('Apersonamiento')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('info')
                        ->url(fn ($record) => $record->apersonamineto ? Storage::url($record->apersonamineto) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->apersonamineto)),

                    Action::make('download_planilla_asistencia')
                        ->label('Planilla Asistencia')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('warning')
                        ->url(fn ($record) => $record->planilla_asistencia ? Storage::url($record->planilla_asistencia) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->planilla_asistencia)),

                    Action::make('download_informe_mensual')
                        ->label('Informe Mensual')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('success')
                        ->url(fn ($record) => $record->informe_mensual ? Storage::url($record->informe_mensual) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->informe_mensual)),

                    Action::make('download_informe_conclusion')
                        ->label('Informe Conclusión')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('success')
                        ->url(fn ($record) => $record->informe_conclusion ? Storage::url($record->informe_conclusion) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->informe_conclusion)),

                    Action::make('download_informe_incumplimiento')
                        ->label('Informe Incumplimiento')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('danger')
                        ->url(fn ($record) => $record->informe_incumplimiento ? Storage::url($record->informe_incumplimiento) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->informe_incumplimiento)),

                    Action::make('download_informe_fiscal')
                        ->label('Informe Fiscal')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('warning')
                        ->url(fn ($record) => $record->informe_fiscal ? Storage::url($record->informe_fiscal) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->informe_fiscal)),

                    Action::make('download_fotocopia_carnet')
                        ->label('Fotocopia Carnet')
                        ->icon('heroicon-o-document-arrow-down')
                        ->color('primary')
                        ->url(fn ($record) => $record->fotocopia_carnet ? Storage::url($record->fotocopia_carnet) : null)
                        ->openUrlInNewTab()
                        ->visible(fn ($record) => !empty($record->fotocopia_carnet)),
                ])
                ->label('Descargar Documentos')
                ->icon('heroicon-o-arrow-down-tray'),

                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListComunitarios::route('/'),
            'create' => Pages\CreateComunitario::route('/create'),
            'edit' => Pages\EditComunitario::route('/{record}/edit'),
        ];
    }
}