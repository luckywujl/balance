<?php

namespace app\admin\controller\report;

use app\common\controller\Backend;

/**
 * 收支明细
 *
 * @icon fa fa-circle-o
 */
class Account extends Backend
{
    
    /**
     * Account模型对象
     * @var \app\admin\model\report\Account
     */
    protected $model = null;
    protected $searchFields = '';
    protected $dataLimit = 'personal';
    protected $dataLimitField = 'company_id';

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\report\Account;
        $this->view->assign("accountTypeList", $this->model->getAccountTypeList());
    }

    public function import()
    {
        parent::import();
    }

    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
      /**
     * 查看
     */
    public function index()
    {
        //设置过滤方法
        $this->request->filter(['strip_tags', 'trim']);
        if ($this->request->isAjax()) {
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('keyField')) {
                return $this->selectpage();
            }
            list($where, $sort, $order, $offset, $limit) = $this->buildparams();

            $list = $this->model
                ->field('account_type,account_object,round(sum(account_amount),2) as account_amount,count(*) as account_number')     
                ->where($where)
                ->group('account_type,account_object')
                ->order($sort, $order)
                ->paginate($limit);

            $result = array("total" => $list->total(), "rows" => $list->items());

            return json($result);
        }
        return $this->view->fetch();
    }
    

}
