<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WineSV.login" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
                                <script src="SweetAlert/sweetalert2.js"></script>

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css24/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
    
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                           <img src="img/vino1.jpg" class="col-lg-6">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Inicia sesion</h1>
                                    </div>
                                   
                                        <form runat ="server">
                                        <div class="form-group">
                                            <%--<input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address...">--%>
                                            <asp:TextBox ID="Username"  placeholder="Ingresa tu usuario" class="form-control form-control-user" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <%--<input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password">--%>
                                            <asp:TextBox ID="Password" class="form-control form-control-user" placeholder="contraseña" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <%--<label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>--%>
                                            </div>
                                        </div>
                                        <%--a href="index.html" class="btn btn-primary btn-user btn-block">
                                            Login--%>

                                        <asp:Button runat="server" class="btn btn-primary btn-user btn-block" Text="Iniciar Sesion" OnClick ="Login_Click"></asp:Button>
                                       <%-- </a>
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>--%>
                                            <asp:Literal ID="alertas" runat="server" Text=""></asp:Literal>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="recu.aspx">Olvidaste tu contraseña?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="registrar.aspx">¡Crea tu cuenta aqui!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
        
</body>

</html>