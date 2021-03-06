<?php

namespace app\admin\controller\financial;

use app\common\controller\Backend;

/**
 * 结算清单
 *
 * @icon fa fa-circle-o
 */
class Statementcount extends Backend
{
    
    /**
     * Statementcount模型对象
     * @var \app\admin\model\financial\Statementcount
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\financial\Statementcount;
        $this->view->assign("statementStatusList", $this->model->getStatementStatusList());
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
        //当前是否为关联查询
        $this->relationSearch = true;
        //获取提交的数据参数
        $filter = $this->request->get("filter",'');
        $filter = (array)json_decode($filter, true);
        
        //设置过滤方法
         

        $this->request->filter(['strip_tags', 'trim']);
       

        if ($this->request->isAjax()) {
        	
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('keyField')) {
                return $this->selectpage();
            }
            list($where, $sort, $order, $offset, $limit) = $this->buildparams();

            $list = $this->model
            		  ->field('statement_date,statement_customtype,statement_status,count(*) as statement_number,SUM(statement_NW) as statement_NW,SUM(statement_cost) as statement_cost,SUM(statement_pay) as statement_pay,SUM(statement_pay)/count(*) as statement_avg')
                    ->with(['customcustom'])
                    ->where($where)
                    ->group('statement_customtype')
                    ->order($sort, $order)
                    ->paginate($limit);

            foreach ($list as $row) {
                
                
            }

            $result = array("total" => $list->total(), "rows" => $list->items());
            
            return json($result);
        }
        if (!isset($filter)) {
         $this->assignConfig('statement_date',$filter);
        }
        return $this->view->fetch();
        
 
    }

}
