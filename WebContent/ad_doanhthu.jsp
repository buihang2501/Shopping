<%-- 
    Document   : basic_table
    Created on : Oct 9, 2019, 10:56:40 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="ad_img/favicon.png">

        <title>Basic Table | Creative - Bootstrap 3 Responsive Admin Template</title>

        <!-- Bootstrap CSS -->
        <link href="ad_css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="ad_css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="ad_css/elegant-icons-style.css" rel="stylesheet" />
        <link href="ad_css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom styles -->
        <link href="ad_css/style.css" rel="stylesheet">
        <link href="ad_css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
            <script src="ad_js/html5shiv.js"></script>
            <script src="ad_js/respond.min.js"></script>
            <script src="ad_js/lte-ie7.js"></script>
          <![endif]-->

          <!-- =======================================================
            Theme Name: NiceAdmin
            Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
            Author: BootstrapMade
            Author URL: https://bootstrapmade.com
          ======================================================= -->
    </head>
    <body>
        <!-- container section start -->
        <section id="container" class=""> 
            <jsp:include page = "ad_header.jsp"></jsp:include>
            <jsp:include page = "ad_sidebar.jsp"></jsp:include>
            <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Table</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="ad_index.jsp">Home</a></li>
              <li><i class="fa fa-table"></i>Table</li>
              <li><i class="fa fa-th-list"></i>Basic Table</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
        <!-- 
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading">
                Product List
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>Mã Sản Phẩm</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Giá</th>
                    <th>Thông tin</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${list }">
                  <tr>
                    <td>${product.getMaSP() }</td>
                    <td>${product.getTenSP() }</td>
                    <td>${product.getPrice() }</td>
                    <td>${product.getThongtin() }</td>
                  </tr>
                 </c:forEach>
                </tbody>
              </table>
            </section>
          </div>
          -->
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading">
                Doanh Thu
              </header>
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Mã Sản Phẩm</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="d" items="${doanhthu }">
                  <tr>
                    <td>${d.getMaSP() }</td>
                    <td>${d.getTenSP() }</td>
                    <td>${d.getSoluong() }</td>
                    <td>${d.getThanhtien() }</td>
                  </tr>
                 </c:forEach>
                  <!--  <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                  -->
                </tbody>
              </table>
            </section>
          </div>
          
        </div>
        <!-- 
        <div class="row">
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading no-border">
                Border Table
              </header>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td rowspan="2">1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@TwBootstrap</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>
            </section>
          </div>
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading">
                Hover Table
              </header>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Sumon</td>
                        <td>Mosa</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </section>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <section class="panel">
                  <header class="panel-heading">
                    Condensed table
                  </header>
                  <table class="table table-condensed">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Ajay Patel</td>
                        <td>LA</td>
                        <td>@ajaypatel_aj</td>
                      </tr>
                    </tbody>
                  </table>
                </section>
              </div>
              <div class="col-sm-6">
                <section class="panel">
                  <header class="panel-heading">
                    Contextual classes
                  </header>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Column heading</th>
                        <th>Column heading</th>
                        <th>Column heading</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="active">
                        <td>1</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                      </tr>
                      <tr class="success">
                        <td>2</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                      </tr>
                      <tr class="warning">
                        <td>3</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                      </tr>
                      <tr class="danger">
                        <td>4</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                      </tr>
                    </tbody>
                  </table>
                </section>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <section class="panel">
                  <header class="panel-heading">
                    Responsive tables
                  </header>
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Table heading</th>
                          <th>Table heading</th>
                          <th>Table heading</th>
                          <th>Table heading</th>
                          <th>Table heading</th>
                          <th>Table heading</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>

                </section>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <section class="panel">
                  <header class="panel-heading">
                    Advanced Table
                  </header>

                  <table class="table table-striped table-advance table-hover">
                    <tbody>
                      <tr>
                        <th><i class="icon_profile"></i> Full Name</th>
                        <th><i class="icon_calendar"></i> Date</th>
                        <th><i class="icon_mail_alt"></i> Email</th>
                        <th><i class="icon_pin_alt"></i> City</th>
                        <th><i class="icon_mobile"></i> Mobile</th>
                        <th><i class="icon_cogs"></i> Action</th>
                      </tr>
                      <tr>
                        <td>Angeline Mcclain</td>
                        <td>2004-07-06</td>
                        <td>dale@chief.info</td>
                        <td>Rosser</td>
                        <td>176-026-5992</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Sung Carlson</td>
                        <td>2011-01-10</td>
                        <td>ione.gisela@high.org</td>
                        <td>Robert Lee</td>
                        <td>724-639-4784</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Bryon Osborne</td>
                        <td>2006-10-29</td>
                        <td>sol.raleigh@language.edu</td>
                        <td>York</td>
                        <td>180-456-0056</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Dalia Marquez</td>
                        <td>2011-12-15</td>
                        <td>angeline.frieda@thick.com</td>
                        <td>Alton</td>
                        <td>690-601-1922</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Selina Fitzgerald</td>
                        <td>2003-01-06</td>
                        <td>moshe.mikel@parcelpart.info</td>
                        <td>Waelder</td>
                        <td>922-810-0915</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Abraham Avery</td>
                        <td>2006-07-14</td>
                        <td>harvey.jared@pullpump.org</td>
                        <td>Harker Heights</td>
                        <td>511-175-7115</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Caren Mcdowell</td>
                        <td>2002-03-29</td>
                        <td>valeria@hookhope.org</td>
                        <td>Blackwell</td>
                        <td>970-147-5550</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Owen Bingham</td>
                        <td>2013-04-06</td>
                        <td>thomas.christopher@firstfish.info</td>
                        <td>Rule</td>
                        <td>934-118-6046</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Ahmed Dean</td>
                        <td>2008-03-19</td>
                        <td>lakesha.geri.allene@recordred.com</td>
                        <td>Darrouzett</td>
                        <td>338-081-8817</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>Mario Norris</td>
                        <td>2010-02-08</td>
                        <td>mildred@hour.info</td>
                        <td>Amarillo</td>
                        <td>945-547-5302</td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                            <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                            <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </section>
              </div>
            </div>
            -->
            <!-- page end-->
          </section>
        </section>
        <!--main content end-->
        <div class="text-right">
          <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
              -->
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
        </section>
        <!-- container section end -->
        <!-- javascripts -->
        <script src="ad_js/jquery.js"></script>
        <script src="ad_js/bootstrap.min.js"></script>
        <!-- nicescroll -->
        <script src="ad_js/jquery.scrollTo.min.js"></script>
        <script src="ad_js/jquery.nicescroll.js" type="text/javascript"></script>
        <!--custome script for all page-->
        <script src="ad_js/scripts.js"></script>
    </body>
</html>
