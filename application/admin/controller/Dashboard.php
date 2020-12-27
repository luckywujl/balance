<?php

namespace app\admin\controller;
use think\Db;
use app\common\controller\Backend;
use think\Config;
use app\admin\model\custom as custom;

/**
 * 控制台
 *
 * @icon fa fa-dashboard
 * @remark 用于展示当前系统中的统计数据、统计报表及重要实时数据
 */
 
class Dashboard extends Backend
{
    protected $model = null;
    //protected $searchFields = 'account_code,account_statement_code,account_object,account_paymentmode,customcustom.custom_name';
    protected $dataLimit = 'personal';
    protected $dataLimitField = 'company_id';
    /**
     * 查看
     */
    public function index()
    {
        $seventtime = \fast\Date::unixtime('day', -7);
        $paylist = $createlist = [];
        for ($i = 0; $i < 7; $i++)
        {
            $day = date("Y-m-d", $seventtime + ($i * 86400));
            $createlist[$day] = mt_rand(20, 200);
            $paylist[$day] = mt_rand(1, mt_rand(1, $createlist[$day]));
        }
        $hooks = config('addons.hooks');
        $uploadmode = isset($hooks['upload_config_init']) && $hooks['upload_config_init'] ? implode(',', $hooks['upload_config_init']) : 'local';
        $addonComposerCfg = ROOT_PATH . '/vendor/karsonzhang/fastadmin-addons/composer.json';
        Config::parse($addonComposerCfg, "json", "composer");
        $config = Config::get("composer");
        $addonVersion = isset($config['version']) ? $config['version'] : __('Unknown');
        //获取总客户数
        $custom = new custom\Custom();
        $custom_info = $custom
        ->where('company_id',$this->auth->company_id)
        ->count();
        //获取客户类型数量
        $customtype = new custom\Customtype();
        $customtype_info = $customtype
        ->where('company_id',$this->auth->company_id)
        ->count();
        //获取采购用户数
        $customtypea = $customtype
        ->field('customtype')
        ->where(['company_id'=>$this->auth->company_id,'customtype_attribute'=>'1'])
        ->select();
        
        $custom_infoc = $custom
        ->where(['company_id'=>$this->auth->company_id])
        ->where('custom_customtype','IN',$customtypea)
        ->count();
        
        //获取供应商用户数
        $customtypeb = $customtype
        ->field('customtype')
        ->where(['company_id'=>$this->auth->company_id,'customtype_attribute'=>'0'])
        ->select();
        
        $custom_infod = $custom
        ->where(['company_id'=>$this->auth->company_id])
        ->where('custom_customtype','IN',$customtypeb)
        ->count();
        
        
        $this->view->assign([
            'totaluser'        => $custom_info,
            'totalviews'       => $customtype_info,
            'totalorder'       => $custom_infoc,
            'totalorderamount' => $custom_infod,
            'todayuserlogin'   => 321,
            'todayusersignup'  => 430,
            'todayorder'       => 2324,
            'unsettleorder'    => 132,
            'sevendnu'         => '80%',
            'sevendau'         => '32%',
            'paylist'          => $paylist,
            'createlist'       => $createlist,
            'addonversion'       => $addonVersion,
            'uploadmode'       => $uploadmode
        ]);

        return $this->view->fetch();
    }

}
