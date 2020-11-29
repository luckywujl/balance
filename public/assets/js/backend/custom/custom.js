define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'custom/custom/index' + location.search,
                    add_url: 'custom/custom/add',
                    edit_url: 'custom/custom/edit',
                    del_url: 'custom/custom/del',
                    multi_url: 'custom/custom/multi',
                    import_url: 'custom/custom/import',
                    table: 'custom_custom',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'custom_id',
                sortName: 'custom_id',
                columns: [
                    [
                        {checkbox: true},
                        //{field: 'custom_id', title: __('Custom_id')},
                        {field: 'custom_code', title: __('Custom_code'), operate: 'LIKE'},
                        {field: 'custom_name', title: __('Custom_name'), operate: 'LIKE'},
                        //{field: 'custom_customtype_id', title: __('Custom_customtype_id')},
                        {field: 'customcustomtype.customtype', title: __('Customcustomtype.customtype'), operate: 'LIKE',formatter: Table.api.formatter.status},
                        {field: 'basebusinessarea.businessarea', title: __('Basebusinessarea.businessarea'), operate: 'LIKE',formatter: Table.api.formatter.flag},
                        
                        //{field: 'custom_businessarea_id', title: __('Custom_businessarea_id')},
                        {field: 'custom_address', title: __('Custom_address'), operate: 'LIKE'},
                        {field: 'custom_tel', title: __('Custom_tel'), operate: 'LIKE'},
                        {field: 'custom_conact', title: __('Custom_conact'), operate: 'LIKE'},
                        {field: 'custom_status', title: __('Custom_status'), searchList: {"0":__('Custom_status 0'),"1":__('Custom_status 1'),"2":__('Custom_status 2')}, formatter: Table.api.formatter.status},
                        //{field: 'company_id', title: __('Company_id')},
                        //{field: 'customcustomtype.customtype_ID', title: __('Customcustomtype.customtype_id')},
                        //{field: 'customcustomtype.company_id', title: __('Customcustomtype.company_id'), operate: 'LIKE'},
                        //{field: 'basebusinessarea.businessarea_id', title: __('Basebusinessarea.businessarea_id')},
                        //{field: 'basebusinessarea.company_id', title: __('Basebusinessarea.company_id'), operate: 'LIKE'},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});