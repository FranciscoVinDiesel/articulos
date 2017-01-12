<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Articulo */
?>
<div class="articulo-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_articulo',
            'nombre_articulo',
            'Url:url',
            'descripcion',
            'puntaje_articulo',
            'ciudad',
            'fecha_creacion',
            'fehca_revision',
            'fecha_publicacion',
            'id_escuela',
            'id_estados',
            'id_categoria',
        ],
    ]) ?>

</div>
