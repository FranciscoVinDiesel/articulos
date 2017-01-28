<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'name'=>' Control de actividades',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
         'rbac' => 'dektrium\rbac\RbacWebModule',
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
       /* 'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],*/
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
        ],



    ],

    'modules' => [
      'user' => [
        'class' => 'dektrium\user\Module',
        'enableUnconfirmedLogin' => true,
        'confirmWithin' => 21600,
        'cost' => 12,
        'admins' => ['admin'],
      ],
        'audit' => [
             'class' => 'bedezign\yii2\audit\Audit',
             // the layout that should be applied for views within this module
             'layout' => 'main',
             // Name of the component to use for database access
             'db' => 'db',
             // List of actions to track. '*' is allowed as the last character to use as wildcard
             'trackActions' => ['*'],
             // Actions to ignore. '*' is allowed as the last character to use as wildcard (eg 'debug/*')
             'ignoreActions' => ['audit/*', 'debug/*'],
             // Maximum age (in days) of the audit entries before they are truncated
             'maxAge' => 'debug',
             // IP address or list of IP addresses with access to the viewer, null for everyone (if the IP matches)
             'accessIps' => ['127.0.0.1', '192.168.*'],
             // Role or list of roles with access to the viewer, null for everyone (if the user matches)
             'accessRoles' => ['admin'],
             'accessUsers' => [1, 2, 3],
        ]
    ],

    'params' => $params,
];
