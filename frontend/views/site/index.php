<?php
/* @var $this yii\web\View */
 use yii\helpers\Html;
 use yii\helpers\Url;
$this->title = 'Home';
?>

<div class="container-fluid">

    <div class="row mt">
        <div class="col-lg-12 centered">
              <?= Html::img(Url::to('/yii2_base-master/frontend/views/site/img/lg.jpg', false), ['alt' => 'My logo', 'width'=>'300']) ?>

        <h1>PUCESE</h1>

        <p class="lead">Registros de Artículos Científicos</p>

        </div>
    </div>
</div>
