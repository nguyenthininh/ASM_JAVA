<%--
  Created by IntelliJ IDEA.
  User: Nina Nguyen
  Date: 4/15/21
  Time: 6:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý user</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css" integrity="sha512-OdEXQYCOldjqUEsuMKsZRj93Ht23QRlhIb8E/X0sbwZhme8eUw6g8q7AdxGJKakcBbv7+/PX0Gc2btf7Ru8cZA==" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" integrity="sha512-RXf+QSDCUQs5uwRKaDoXt55jygZZm2V++WUZduaU/Ui/9EGp3f/2KZVahFZBKGH0s774sd3HmrhUy+SgOFQLVQ==" crossorigin="anonymous"></script>
</head>

<body>

<div class="container">
    <div class="row mt-3">
        <div class="col-md-3 offset-md-9 col-12 text-center">
            <button class="btn btn-primary" id="test"><i class="fa fa-plus mr-1"></i>Thêm mới</button>
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
                <tr>
                    <td>1</td>
                    <td>Thành BV</td>
                    <td>0334947012</td>
                    <td>thanhbv@gmail.com</td>
                    <td>Người dùng</td>
                    <td>15/4/2021</td>
                    <td>
                        <a data-toggle="tooltip" data-placement="top" title="Chỉnh sửa." class="cursor-pointer">
                            <i class="btnEdit fa fa-fw fa-edit"></i>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Xóa user." class="cursor-pointer">
                            <i class="btnDelete fa fa-fw fa-trash-o"></i>
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
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
    $('#test').click(() => {
        swal({
            title: "ok",
            icon: "success"
        })
    })
</script>
</body>

</html>
