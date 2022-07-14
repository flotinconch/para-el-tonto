
<?php

require_once('../../model/conexion.php');
require_once('../../model/model.register.php');

 
 ?>
 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Page Title - SB Admin</title>
        <link href="../css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Registrese</h3></div>
                                    <div class="card-body">
                                    <?php 
                                        if(isset($errors) && count($errors) > 0)
                                        {
                                            foreach($errors as $error_msg)
                                            {
                                                echo '<div class="alert alert-danger">'.$error_msg.'</div>';
                                            }
                                        }
                                        
                                        if(isset($success))
                                        {
                                            
                                            echo '<div class="alert alert-success">'.$success.'</div>';
                                        }
                                    ?>
                                        <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
                                            <div class="form-row">
                                                <div class="col-md-7">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">Nombre</label>
                                                        <input class="form-control py-4" name="name" id="inputFirstName" type="text" placeholder="Enter first name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-7">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName">Apellido</label>
                                                        <input class="form-control py-4" name="lastname" id="inputLastName" type="text" placeholder="Enter last name" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputLastName">user</label>
                                                        <input class="form-control py-4" name="user" id="inputuser" type="text" placeholder="Enter user" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" name="email" id="inputEmailAddress" type="email" aria-describedby="emailHelp" placeholder="Enter email address" />
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-7">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPassword">Password</label>
                                                        <input class="form-control py-4" name="password" id="inputPassword" type="password" placeholder="Enter password" />
                                                    </div>
                                                </div>
                                                <div class="col-md-7">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputConfirmPassword">Confirme el  Password</label>
                                                        <input class="form-control py-4" name="repassword" id="inputConfirmPassword" type="password" placeholder="Confirm password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" name="submit" class="btn btn-primary">Registrarse</button>
                                            <div class="card-footer text-center">
                                        <div class="big"><a href="../../index.php">¿ya tienes una cuenta? Ir a iniciar sesión</a></div>
                                    </div>
                                        </form>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                &middot;
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../js/scripts.js"></script>
    </body>
</html>