<?php

namespace Yiche\Config;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Yiche\Config\Models\SapiConfig;

class ConfigInstall extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'yiche:config-install';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '获取配置扩展';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $sql = dirname(__DIR__) . '/database/sql/db.sql';
        //
        $model     = new SapiConfig();
        $tableName = $model->getTable();
        if (Schema::hasTable($tableName)) {
            dd("{$tableName}表已经存在");
        }
        DB::unprepared(file_get_contents($sql));
    }
}
