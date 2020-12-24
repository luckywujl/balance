<?php

namespace app\admin\controller\custom;

use app\common\controller\Backend;
use think\Db;
use app\admin\model\custom as custom;
/**
 * 客户类型
 *
 * @icon fa fa-circle-o
 */
class Customtype extends Backend
{
    
    /**
     * Customtype模型对象
     * @var \app\admin\model\custom\Customtype
     */
    protected $model = null;
    protected $searchFields = 'customtype';
    protected $dataLimit = 'personal';
    protected $dataLimitField = 'company_id';

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\custom\Customtype;
        $this->view->assign("customtypeAttributeList", $this->model->getCustomtypeAttributeList());
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
     * 编辑
     */
    public function edit($ids = null)
    {
        $row = $this->model->get($ids);
        if (!$row) {
            $this->error(__('No Results were found'));
        }
        $adminIds = $this->getDataLimitAdminIds();
        if (is_array($adminIds)) {
            if (!in_array($row[$this->dataLimitField], $adminIds)) {
                $this->error(__('You have no permission'));
            }
        }
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                $params = $this->preExcludeFields($params);
                $result = false;
                Db::startTrans();
                try {
                    //是否采用模型验证
                    if ($this->modelValidate) {
                        $name = str_replace("\\model\\", "\\validate\\", get_class($this->model));
                        $validate = is_bool($this->modelValidate) ? ($this->modelSceneValidate ? $name . '.edit' : $name) : $this->modelValidate;
                        $row->validateFailException(true)->validate($validate);
                    }
                    
                    //同时将客户信息表中的客户类型更新
                    $custom = new custom\Custom();
                    $custom_info = $custom 
                      ->where(['custom_customtype'=>$row['customtype'],'company_id'=>$this->auth->company_id])
                      ->update(['custom_customtype'=>$params['customtype']]);
                    
                    $result = $row->allowField(true)->save($params);  
                    Db::commit();
                } catch (ValidateException $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                } catch (PDOException $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                } catch (Exception $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                }
                if ($result !== false) {
                    $this->success();
                } else {
                    $this->error(__('No rows were updated'));
                }
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        $this->view->assign("row", $row);
        return $this->view->fetch();
    }

    /**
     * 删除
     */
    public function del($ids = "")
    {
        if (!$this->request->isPost()) {
            $this->error(__("Invalid parameters"));
        }
        $ids = $ids ? $ids : $this->request->post("ids");
        if ($ids) {
            $pk = $this->model->getPk();
            $adminIds = $this->getDataLimitAdminIds();
            if (is_array($adminIds)) {
                $this->model->where($this->dataLimitField, 'in', $adminIds);
            }
            $list = $this->model->where($pk, 'in', $ids)->select();

            $count = 0;
            Db::startTrans();
            try {
                foreach ($list as $k => $v) {
                	//先检测一下客户类型是否有使用，如果使用，则不让删除
                	 $custom = new custom\Custom();
                    $custom_info = $custom 
                	   ->where(['custom_customtype'=>$v['customtype'],'company_id'=>$this->auth->company_id])
                	   ->find();
                	if($custom_info) {
                		$this->error($v['customtype'].__('该客户类型已经有客户在使用，不能删除'));
                	} else {
                		$count += $v->delete();
                	}   
                    
                }
                Db::commit();
            } catch (PDOException $e) {
                Db::rollback();
                $this->error($e->getMessage());
            } catch (Exception $e) {
                Db::rollback();
                $this->error($e->getMessage());
            }
            if ($count) {
                $this->success();
            } else {
                $this->error(__('No rows were deleted'));
            }
        }
        $this->error(__('Parameter %s can not be empty', 'ids'));
    }

}
