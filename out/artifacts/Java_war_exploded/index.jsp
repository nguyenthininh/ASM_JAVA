<%--
  Created by IntelliJ IDEA.
  User: Nina Nguyen
  Date: 4/15/21
  Time: 6:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý user</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css"
          integrity="sha512-OdEXQYCOldjqUEsuMKsZRj93Ht23QRlhIb8E/X0sbwZhme8eUw6g8q7AdxGJKakcBbv7+/PX0Gc2btf7Ru8cZA=="
          crossorigin="anonymous"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            integrity="sha512-RXf+QSDCUQs5uwRKaDoXt55jygZZm2V++WUZduaU/Ui/9EGp3f/2KZVahFZBKGH0s774sd3HmrhUy+SgOFQLVQ=="
            crossorigin="anonymous"></script>
</head>

<body>

<div class="container">
    <div class="row mt-3">
        <div class="col-md-3 offset-md-9 col-12 text-center">
            <button class="btn btn-primary" data-toggle="modal" data-target="#user-add"><i class="fa fa-plus mr-1"></i>Thêm mới</button>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Stt</th>
                    <th>Tên</th>
                    <th>SĐT</th>
                    <th>Email</th>
                    <th>Loại user</th>
                    <th>Ngày tạo</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="u" items="${requestScope.listUser}">
                    <tr>
                        <td>${u.id}</td>
                        <td>${u.name}</td>
                        <td>${u.phone}</td>
                        <td>${u.email}</td>
                        <c:if test="${u.role == 2}">
                            <td>Người dùng</td>
                        </c:if>
                        <c:if test="${u.role == 1}">
                            <td>Admin</td>
                        </c:if>
                        <td>${u.createDate}</td>
                        <td>
                            <a data-toggle="tooltip" data-placement="top" title="Chỉnh sửa."
                               class="detail cursor-pointer"
                               data-id="${u.id}" data-name="${u.name}" data-phone="${u.phone}" data-email="${u.email}"
                               data-role="${u.role}">
                                <i class="btnEdit fa fa-fw fa-edit"></i>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Xóa user." class="cursor-pointer">
                                <i class="btnDelete fa fa-fw fa-trash-o"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
        </div>
    </div>

</div>

<!-- Modal -->
<div class="modal fade" id="user-detail" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Chi tiết</h4>
            </div>
            <div class="modal-body">
                <div class="row mt-1">
                    <div class="col-5">Tên</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-name">
                    </div>
                </div>
                <div class="row mt-1">
                    <div class="col-5">Số điện thoại</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-phone">
                    </div>
                </div>

                <div class="row mt-1">
                    <div class="col-5">Email</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-email">
                    </div>
                </div>
                <div class="row mt-1">
                    <div class="col-5">Loại người dùng</div>
                    <div class="col-7">
                        <select class="form-control" id="val-role">
                            <option value="1">Admin</option>
                            <option value="2">Người dùng</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="user-add" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Chi tiết</h4>
            </div>
            <div class="modal-body">
                <div class="row mt-1">
                    <div class="col-5">Tên</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-name-add">
                    </div>
                </div>
                <div class="row mt-1">
                    <div class="col-5">Số điện thoại</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-phone-add">
                    </div>
                </div>

                <div class="row mt-1">
                    <div class="col-5">Email</div>
                    <div class="col-7">
                        <input class="form-control" id="txt-email-add">
                    </div>
                </div>
                <div class="row mt-1">
                    <div class="col-5">Loại người dùng</div>
                    <div class="col-7">
                        <select class="form-control" id="val-role-add">
                            <option value="1">Admin</option>
                            <option value="2">Người dùng</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<div class="modal" id="modalLoad" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content text-center py-3">
            <div class="modal-body text-center">
                <i class="fa fa-spinner text-success fa-spin" style="font-size: 40px;"></i>
                <div class="col-md-12 text-center mt-2">
                    <span>Đang xử lý</span>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('.detail').click(function(){
        var name = $(this).attr('data-name');
        var phone = $(this).attr('data-phone');
        var email = $(this).attr('data-email');
        var role = $(this).attr('data-role');
        $('#txt-name').val(name);
        $('#txt-phone').val(phone);
        $('#txt-email').val(email);
        $('#val-role').val(role);

        $('#user-detail').modal('show');
    })
</script>
</body>

</html>
