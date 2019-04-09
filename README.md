# config

配置管理
- 安装
- `composer require yiche/config:dev-master`
- `php artisan yiche:config-install`



## 使用

```shell
use Yiche\Config\Models\SapiConfig;

$config_key = 'ali.oss';
$sapi_config = new SapiConfig();
$config_value = $sapi_config->getConfigValue('ali.oss');

```
