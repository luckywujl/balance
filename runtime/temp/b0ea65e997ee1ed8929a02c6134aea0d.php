<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:100:"/home/www/admin/localhost_9002/wwwroot/public/../application/admin/view/financial/statement/add.html";i:1607482584;s:81:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/layout/default.html";i:1602168706;s:78:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/common/meta.html";i:1602168706;s:80:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/common/script.html";i:1602168706;}*/ ?>
<!DOCTYPE html>
<html lang="<?php echo $config['language']; ?>">
    <head>
        <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="referrer" content="never">

<link rel="shortcut icon" href="/assets/img/favicon.ico" />
<!-- Loading Bootstrap -->
<link href="/assets/css/backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

<?php if(\think\Config::get('fastadmin.adminskin')): ?>
<link href="/assets/css/skins/<?php echo \think\Config::get('fastadmin.adminskin'); ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">
<?php endif; ?>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>
  <script src="/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    var require = {
        config:  <?php echo json_encode($config); ?>
    };
</script>

    </head>

    <body class="inside-header inside-aside <?php echo defined('IS_DIALOG') && IS_DIALOG ? 'is-dialog' : ''; ?>">
        <div id="main" role="main">
            <div class="tab-content tab-addtabs">
                <div id="content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <section class="content-header hide">
                                <h1>
                                    <?php echo __('Dashboard'); ?>
                                    <small><?php echo __('Control panel'); ?></small>
                                </h1>
                            </section>
                            <?php if(!IS_DIALOG && !\think\Config::get('fastadmin.multiplenav') && \think\Config::get('fastadmin.breadcrumb')): ?>
                            <!-- RIBBON -->
                            <div id="ribbon">
                                <ol class="breadcrumb pull-left">
                                    <?php if($auth->check('dashboard')): ?>
                                    <li><a href="dashboard" class="addtabsit"><i class="fa fa-dashboard"></i> <?php echo __('Dashboard'); ?></a></li>
                                    <?php endif; ?>
                                </ol>
                                <ol class="breadcrumb pull-right">
                                    <?php foreach($breadcrumb as $vo): ?>
                                    <li><a href="javascript:;" data-url="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a></li>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                            <!-- END RIBBON -->
                            <?php endif; ?>
                            <div class="content">
                                <form id="add-form" class="form-horizontal" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_code'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_code" class="form-control" name="row[statement_code]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_date'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_date" class="form-control" name="row[statement_date]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_plate_number'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_plate_number" class="form-control" name="row[statement_plate_number]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_mototype'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_mototype" class="form-control" name="row[statement_mototype]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_product_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_product_id" data-rule="required" data-source="statement/product/index" class="form-control selectpage" name="row[statement_product_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_custom_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_custom_id" data-rule="required" data-source="statement/custom/index" class="form-control selectpage" name="row[statement_custom_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_customtype'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_customtype" class="form-control" name="row[statement_customtype]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_gw'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_GW" class="form-control" name="row[statement_GW]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_tare'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_tare" class="form-control" name="row[statement_tare]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_nw'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_NW" class="form-control" name="row[statement_NW]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_product_price'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_product_price" class="form-control" name="row[statement_product_price]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_discount'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_discount" class="form-control" name="row[statement_discount]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_cost'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_cost" class="form-control" name="row[statement_cost]" type="number">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_intime'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_intime" class="form-control datetimepicker" data-date-format="YYYY-MM-DD HH:mm:ss" data-use-current="true" name="row[statement_intime]" type="text" value="<?php echo date('Y-m-d H:i:s'); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_outtime'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_outtime" class="form-control datetimepicker" data-date-format="YYYY-MM-DD HH:mm:ss" data-use-current="true" name="row[statement_outtime]" type="text" value="<?php echo date('Y-m-d H:i:s'); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_remark'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_remark" class="form-control" name="row[statement_remark]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_indetail_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_indetail_id" data-rule="required" data-source="statement/indetail/index" class="form-control selectpage" name="row[statement_indetail_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_outdetail_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_outdetail_id" data-rule="required" data-source="statement/outdetail/index" class="form-control selectpage" name="row[statement_outdetail_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_checker'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-statement_checker" class="form-control" name="row[statement_checker]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Statement_status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            
            <div class="radio">
            <?php if(is_array($statementStatusList) || $statementStatusList instanceof \think\Collection || $statementStatusList instanceof \think\Paginator): if( count($statementStatusList)==0 ) : echo "" ;else: foreach($statementStatusList as $key=>$vo): ?>
            <label for="row[statement_status]-<?php echo $key; ?>"><input id="row[statement_status]-<?php echo $key; ?>" name="row[statement_status]" type="radio" value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',"0"))): ?>checked<?php endif; ?> /> <?php echo $vo; ?></label> 
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Company_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-company_id" data-rule="required" data-source="company/index" class="form-control selectpage" name="row[company_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group layer-footer">
        <label class="control-label col-xs-12 col-sm-2"></label>
        <div class="col-xs-12 col-sm-8">
            <button type="submit" class="btn btn-success btn-embossed disabled"><?php echo __('OK'); ?></button>
            <button type="reset" class="btn btn-default btn-embossed"><?php echo __('Reset'); ?></button>
        </div>
    </div>
</form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/assets/js/require<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js" data-main="/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo htmlentities($site['version']); ?>"></script>
    </body>
</html>
