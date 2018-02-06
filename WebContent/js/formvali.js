$(document).ready(function() {
	$('#trydate').datetimepicker({
			minView: "month",
            format: "yyyy-mm-dd",  
            clearBtn:true,  
            todayBtn:true,
            autoclose:true
});
$('#trytime').timepicker({
		defaultTime:'9:00',
		showMeridian:false
});

$('#form1').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*验证*/
                cusname: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '用户名称不能为空'
                        }
                    }
                },
                proname: {
                    message:'',
                    validators: {
                        notEmpty: {
                            message: '专案名称不能为空'
                        }
                    }
                },
                province: {/*键名username和input name值对应*/
                    message: '请选择阶段',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '请选择阶段'
                        }
                    }
                },
                stage: {/*键名username和input name值对应*/
                    message: '请选择阶段',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '请选择阶段'
                        }
                    }
                },
                modeltype: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '机种名称不能为空'
                        }
                    }
                },
                team: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '生产班别不能为空'
                        }
                    }
                },
                trialsite: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '试产地点不能为空'
                        }
                    }
                },
                number: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '投入数量不能为空'
                        }
                    }
                },
                goodnumber: {/*键名username和input name值对应*/
                    message: '',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '请填写良品数量'
                        }
                    }
                }
            }
        });
});