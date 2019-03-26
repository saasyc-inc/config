# config

配置管理

- composer require yiche/config 1.0


## 使用

```shell
use Yiche\Config\Models\SapiConfig;

$config_key = 'ali.oss';
$sapi_config = new SapiConfig();
$config_value = $sapi_config->getConfigValue('ali.oss');

```

## 数据表
database/sql/db.sql  文件导入数据库