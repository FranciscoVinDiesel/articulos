<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use kartik\grid\GridView;
use yii\widgets\Breadcrumbs;
use johnitvn\ajaxcrud\BulkButtonWidget;
use yii\bootstrap\Modal;


/* @var $this yii\web\View */
/* @var $searchModel frontend\models\ArticuloSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Articulos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="articulo-index">
  <div id="ajaxCrudDatatable">

    <div class="row" >
      <div class="col-md-1">

      <?php   echo Html::a('Crear Articulos', '/yii2_base-master/frontend/web/articulo/create',['class'=>'btn btn-primary btn-md']) ;  ?>

      </div>
      <div class="col-md-11">

        <?php
              Modal::begin([
                  'header' => '<p>Hello world</p>',
                  'headerOptions' => ['class' => 'bg-primary'],
                  'size' => 'modal-lg',
                  //'options' => [ 'class' => 'primary' ],
                  'toggleButton' => ['label' => 'Reporte de calificaciones', 'class' => 'btn btn-primary'],
              ]);
         ?>

        <table class="table-hover">
          <tr class="info">
            <td>Hola Como Estas</td>
          </tr>
        </table>


        <?php  Modal::end();      ?>

      </div>
    </div><br/>



          <?php

          echo GridView::widget([
              'id'=>'crud-datatable',
              'dataProvider' =>   $dataProvider,
              'filterModel' => $searchModel,
              'pjax'=>true,
              'columns' => require(__DIR__.'/_columns.php'),
              'toolbar'=> [
                  ['content'=>
                      Html::a('<i class="glyphicon glyphicon-plus"></i>', ['create'],
                      ['role'=>'modal-remote','title'=> 'Crear nuevos artículos','class'=>'btn btn-success']).
                      Html::a('<i class="glyphicon glyphicon-repeat"></i>', [''],
                      ['data-pjax'=>1, 'class'=>'btn btn-warning', 'title'=>'Refrescar']).
                      '{toggleData}'.
                      '{export}'
                  ],
              ],
              'striped' => true,
              'condensed' => true,
              'responsive' => true,
              'panel' => [
                  'type' => 'primary',
                  'heading' => '<i class="glyphicon glyphicon-list"></i> Listado de artículos',
                  'before'=>'<em>*  Listado de artículos.</em>',

              ],
              'showPageSummary' => true
          ]);

            ?>

</div>












</div>
<?php Modal::begin([
    "id"=>"ajaxCrudModal",
    "footer"=>"",// always need it for jquery plugin
])?>
<?php Modal::end(); ?>
