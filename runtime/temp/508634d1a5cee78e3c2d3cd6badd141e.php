<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:97:"/home/www/admin/localhost_9002/wwwroot/public/../application/admin/view/work/outdetail/index.html";i:1607059717;s:81:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/layout/default.html";i:1602168706;s:78:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/common/meta.html";i:1602168706;s:80:"/home/www/admin/localhost_9002/wwwroot/application/admin/view/common/script.html";i:1602168706;}*/ ?>
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
                                <div class="panel panel-default panel-intro">
    <?php echo build_heading(); ?>

    <div class="panel-body">
    <form id="add-form" class="form-horizontal" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
    </div>
    <div class="form-group">
        <label class="control-label col-xs-4 col-sm-1"><?php echo __('Iodetail_plate_number'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_plate_number" data-rule="required"  class="form-control" name="row[iodetail_plate_number]" type="text">
        </div>
    
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_mototype'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_mototype"  data-source="base/mototype/index" data-field = "mototype" data-primary-key="mototype" class="form-control selectpage" name="row[iodetail_mototype]" type="text">
        </div>
    
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_iotime'); ?>:</label>
        <div class="col-xs-12 col-sm-2">
            <input id="c-iodetail_iotime" class="form-control datetimepicker" data-date-format="YYYY-MM-DD HH:mm:ss" data-use-current="true" name="row[iodetail_iotime]" type="text" value="<?php echo date('Y-m-d H:i:s'); ?>">
        </div>
    
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_channel'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_channel" data-rule="required" data-source="base/channel/index" data-field = "channel" data-primary-key="channel" class="form-control selectpage" name="row[iodetail_channel]" type="text">
        </div>
    </div>
    
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_card_code'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_card_code" class="form-control" name="row[iodetail_card_code]" type="text">
        </div>
   
        
        <div class="col-xs-12 col-sm-1" >
            <input id="c-iodetail_custom_id" data-rule="required"  class="form-control " name="row[iodetail_custom_id]" type="text" value="">
        </div>
        
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_custom_name'); ?>:</label>
        <div class="col-xs-12 col-sm-1" >
            <input id="c-iodetail_custom_name" readonly="readonly"  class="form-control "  type="text" value="">
        </div>
        
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_custom_address'); ?>:</label>
        <div class="col-xs-12 col-sm-2" >
            <input id="c-iodetail_custom_address" readonly="readonly"  class="form-control "  type="text" value="">
        </div>
        
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_custom_customtype'); ?>:</label>
        <div class="col-xs-12 col-sm-1" >
            <input id="c-iodetail_custom_customtype" readonly="readonly"  class="form-control "  type="text" value="">
        </div>
        
        
    </div>
    <div class="form-group">
   
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_product_id'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_product_id"  data-rule="required" data-source="base/product/index" data-field = "product_name" data-primary-key="product_ID" class="form-control selectpage" name="row[iodetail_product_id]" type="text" value="">
        </div>
    
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_weight'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_weight" class="form-control" name="row[iodetail_weight]" type="number">
        </div>
        
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_remark'); ?>:</label>
        <div class="col-xs-12 col-sm-2">
            <input id="c-iodetail_remark" data-source="base/remark/index" data-field="remark" data-primary-key="remark" class="form-control selectpage" name="row[iodetail_remark]" type="text">
        </div>
        
        <label class="control-label col-xs-12 col-sm-1"><?php echo __('Iodetail_checker'); ?>:</label>
        <div class="col-xs-12 col-sm-1">
            <input id="c-iodetail_checker" data-rule="required" data-source="auth/admin/index" data-field=nickname data-primary-key="nickname" class="form-control selectpage" name="row[iodetail_checker]" type="text">
        </div>
    </div>
    <div class="form-group">
        
    
        
        
    
  
    
    <div class="form-group layer-footer">
        <label class="control-label col-xs-12 col-sm-3"></label>
        <div class="col-xs-12 col-sm-8">
            <button type="button" class="btn btn-info btn-embossed btn-getinfo"><?php echo __('获取信息'); ?></button>
            <button type="reset" class="btn btn-default btn-embossed"><?php echo __('Reset'); ?></button>
            <button type="button" class="btn btn-info btn-embossed btn-accept"><?php echo __('Accept'); ?></button>
        </div>
    </div>
   <hr align="left" size="1" width="90%" >
</form>
        <div id="myTabContent" class="tab-content"  >
            <div class="tab-pane fade active in" id="one" >
                <div class="widget-body no-padding" >
                    <div id="toolbar" class="toolbar">
                        <a href="javascript:;" class="btn btn-primary btn-refresh" title="<?php echo __('Refresh'); ?>" ><i class="fa fa-refresh"></i> </a>    
                    </div>
                    <table id="table" class="table table-striped table-bordered table-hover table-nowrap"
                           data-operate-edit="<?php echo $auth->check('work/outdetail/edit'); ?>" 
                           data-operate-del="<?php echo $auth->check('work/outdetail/del'); ?>" 
                           width="100%">
                    </table>
                </div>
            </div>
          </div>
         <div id="myTabContent" class="tab-content">   
            <div class="tab-pane fade active in" id="two" >
                <div class="widget-body no-padding" >
                    <div id="toolbar2" class="toolbar">
                        <a href="javascript:;" class="btn btn-primary btn-refresh" title="<?php echo __('Refresh'); ?>" ><i class="fa fa-refresh"></i> </a>    
                    </div>
                    <table id="table2" class="table table-striped table-bordered table-hover table-nowrap"
                           data-operate-edit="<?php echo $auth->check('work/outdetail/edit'); ?>" 
                           data-operate-del="<?php echo $auth->check('work/outdetail/del'); ?>" 
                           width="100%">
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/assets/js/require<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js" data-main="/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo htmlentities($site['version']); ?>"></script>
    </body>
</html>