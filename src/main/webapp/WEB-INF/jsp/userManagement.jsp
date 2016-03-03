<%@ page
    contentType="text/html ; charset=UTF-8"
    pageEncoding="UTF-8"
    %>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ManagePage</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="/TeraNaviAdmin/css/assets/css/bootstrap.css" rel="stylesheet">
        <!-- FONTAWESOME STYLES-->
        <link href="/TeraNaviAdmin/css/assets/css/font-awesome.css" rel="stylesheet">
        <!-- MORRIS CHART STYLES-->
        <link href="/TeraNaviAdmin/css/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet">
        <!-- CUSTOM STYLES-->
        <link href="/TeraNaviAdmin/css/assets/css/custom.css" rel="stylesheet">
        <!-- GOOGLE FONTS-->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="/TeraNaviAdmin/css/default.css">
        <link href="/TeraNaviAdmin/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <link href="/TeraNaviAdmin/css/custom.css" media="all" rel="stylesheet" type="text/css" />
    </head><body>
        <div id="wrapper">
            <div class="nav-block">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">管理者</a>
                </div>
                <div style="color: white;

                padding: 15px 50px 5px 50px;

                float: right;

                font-size: 16px;">Last access : 30 May 2014 &nbsp;
                <a href="#" class="btn btn-danger square-btn-adjust">ログアウト</a>
            </div>
        </nav>
        <!-- /. NAV TOP -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center">
                        <img src="${sessionScope.loginUser.iconPath}" class="user-image img-responsive">
                        </li>
                        <li>
                            <a href="/TeraNaviAdmin/dashboard"><i class="fa fa-dashboard fa-3x"></i> ダッシュボード</a>
                        </li>
                        <li>
                            <a href="/TeraNaviAdmin/userManagement" class="active-menu"><i class="fa fa-user fa-3x"></i> ユーザー管理</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-tasks fa-3x"></i> 利用変更<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/TeraNaviAdmin/policyedit">利用規約</a>
                                </li>
                                <li>
                                    <a href="/TeraNaviAdmin/adminau">権限</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="/TeraNaviAdmin/KeyCreate"><i class="fa fa-key fa-3x"></i> 登録キー</a>
                        </li>
                        <li>
                            <a href="/TeraNaviAdmin/front/contsupplist"><i class="fa fa-envelope fa-3x"></i> お問い合わせ</a>
                        </li>
                        <li>
                            <a href="/TeraNaviAdmin/notice"><i class="fa fa-edit fa-3x"></i> お知らせ </a>
                        </li>
                    </ul>
            </div>
        </nav>
    </div>
        <!-- /. NAV SIDE -->
        <div id="page-wrapper">
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <ul class="lead nav nav-justified nav-tabs">
                                <li class="active">
                                    <a href="#report" data-toggle="tab" class="text-warning" style="font-size: 130%;">通報</a>
                                </li>
                                <li>
                                    <a href="#insert" data-toggle="tab" class="text-warning" style="font-size:130%;">一括登録</a>
                                </li>
                                <li>
                                    <a href="#rocking" data-toggle="tab" class="text-warning" style="font-size:130%;">ロック中ユーザ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content">
                <div class="tab-pane active" id="report">
                    <div class="col-md-10 list">
                        <div class="list-group">
                            <div class="list-group-item list-user" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s320x320/e35/11887020_1484630301848009_925836250_n.jpg">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block operate-area">
                                     <a href="#contact-modal" data-toggle="modal">  <button type="button" class="btn btn-warning caution-button">警告</button></a>
                                        <select class="form-control lock-select">
                                            <option>ロック</option>
                                            <option>24時間</option>
                                            <option>48時間</option>
                                            <option>無期限</option>
                                        </select>
                                    </div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty Forcedーwithdrawal">強制退会</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <label>通報者:</label>
                        <div class="col-md-10 list-2 pull-right">
                            <div class="list-group ">
                                <div class="list-group-item list-user" style="height:120px">
                                    <div class="col-cm-2 pull-left">
                                        <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg">
                                    </div>
                                    <div class="showUserArea_caption">
                                        <div class="pull-left">
                                            <div class="showUserArea_name">ユーザー名</div><br>
                                            <div class="showUserArea_url">
                                                URL:XXXXXXXXXXXXXX
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 list">
                        <div class="list-group">
                            <div class="list-group-item list-user" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s320x320/e35/11887020_1484630301848009_925836250_n.jpg">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block operate-area">
                                     <a href="#contact-modal" data-toggle="modal">  <button type="button" class="btn btn-warning caution-button">警告</button></a>
                                        <select class="form-control lock-select">
                                            <option>ロック</option>
                                            <option>24時間</option>
                                            <option>48時間</option>
                                            <option>無期限</option>
                                        </select>
                                    </div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty Forcedーwithdrawal">強制退会</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <label>通報者:</label>
                        <div class="col-md-10 list-2 pull-right">
                            <div class="list-group ">
                                <div class="list-group-item list-user" style="height:120px">
                                    <div class="col-cm-2 pull-left">
                                        <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg">
                                    </div>
                                    <div class="showUserArea_caption">
                                        <div class="pull-left">
                                            <div class="showUserArea_name">ユーザー名</div><br>
                                            <div class="showUserArea_url">
                                                URL:XXXXXXXXXXXXXX
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="contact-modal" class="modal fade" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h1 class="text-center">警告メールフォーム</h1>
                                </div>
                                <div id="contactM" class="modal-body">
                                    <form action="/TeraNavi/front/#" method="post">
                                        <div class="form-group">
                                            <label class="control-label" for="adminName">管理者名</label>
                                            <input class="form-control" id="contactReplayName" name="adminName" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="Title">件名</label>
                                            <input class="form-control" id="contactReplayTitle" name="title" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">TO:</label>
                                            <input class="form-control" id="contactReplayAddress" type="email" name="address">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">本文</label>
                                            <textarea class="form-control" id="contactReplayBody" name="body"></textarea>
                                        </div>
                                        <button type="button" id="contactBtn" class="btn btn-default pull-right">送信する</button>
                                    </form>

                                </div>
                                <div class="modal-footer"></div>
                            </div><!--end moal-content-->
                        </div><!--end modal-dialog-->
                    </div>


                </div>
                <div class="tab-pane" id="insert">
                    <div class="col-md-10">
                        <form>
                            <div class="form-group" style="margin-top:15%;margin-left:32%">
                                <label style="font-size:400%;font-family:HG行書体;" class="">CSVファイルアップロード</label><br/>
                                <div class="text-center">
                                    <input id="file-3" type="file" accept=".csv">
                                    <button class="btn btn-warning btn-lg btn-file">
                                        <i class="glyphicon glyphicon-upload"></i> &nbsp;送信 …
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
                <div class="tab-pane" id="rocking">
                    <div class="col-md-10" id="showUserArea">
                        <div class="list-group ">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s320x320/e35/11887020_1484630301848009_925836250_n.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-group">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div><div class="list-group">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div><div class="list-group">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div><div class="list-group">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div><div class="list-group">
                            <div class="list-group-item" style="height:120px">
                                <div class="col-cm-2 pull-left">
                                    <img src="http://imgsrc.baidu.com/forum/w=580/sign=4b8b592c504e9258a63486e6ac83d1d1/aabb8d3eb13533fac0232266aed3fd1f40345b40.jpg" style="height:100px;width:100px;">
                                </div>
                                <div class="showUserArea_caption">
                                    <div class="pull-left">
                                        <div class="showUserArea_name">ユーザー名</div><br>
                                        <div class="showUserArea_url">
                                            URL:XXXXXXXXXXXXXX
                                        </div>
                                    </div>
                                    <div class="center-block showUserArea_lastTime">残りX時間</div>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-primaty showUserArea_button_release">解除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. PAGE WRAPPER -->
        </div>
        <!-- /. WRAPPER -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="/TeraNaviAdmin/js/assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="/TeraNaviAdmin/js/assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="/TeraNaviAdmin/js/assets/js/jquery.metisMenu.js"></script>
        <!-- MORRIS CHART SCRIPTS -->
        <script src="/TeraNaviAdmin/js/assets/js/morris/raphael-2.1.0.min.js"></script>
        <script src="/TeraNaviAdmin/js/assets/js/morris/morris.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="/TeraNaviAdmin/js/assets/js/custom.js"></script>
        <script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js"></script>
        <script src="/TeraNaviAdmin/js/fileinput.js" type="text/javascript"></script>
        <script src="/TeraNaviAdmin/js/fileinput_locale_jp.js" type="text/javascript"></script>
        <script>
        $("#file-3").fileinput({
            showUpload: false,
            showCaption: false,
            browseClass: "btn btn-primary btn-lg",
            fileType: "any",
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
        });
        </script>

    </body></html>
