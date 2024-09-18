<?php

function add()
{
    global $conn;
    if(isset($_POST['sbm']))
    {
        $img = upload('img');
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $phone = $_POST['phone'];
        $sql = "
        INSERT INTO `account` ( `name`, `img`, `email`, `password`, `phone`) 
        VALUES  ('{$name}','{$img}','{$email}','{$password}','{$phone}')";
        if(mysqli_query($conn, $sql))
            message('Thành Công!','anime');
        else
            message('Thất bại!','anime');
    }
    else
    {
        echo '
        <div style="padding:1%" class="blog__details__text">
        <form action="" method="POST" enctype="multipart/form-data">
        <p>
            <label for="name">Name</label>
            <input class="form-control" name="name" type="text" value="" />
        </p>
        <p>
            <label for="name">Ảnh</label>
            <input class="form-control" name="img" type="file" />
        </p>
        <p>
            <label for="inputEmail">Email address</label>
            <input class="form-control" name="email" type="email" value="" />
        </p>
        <p>
            <label for="Password">Password</label>
            <input class="form-control" name="password" type="password" value=""/>
        </p>
        <p>
            <label for="phone">Phone</label>
            <input class="form-control" name="phone" type="text" value=""/>
        </p>
        <p>
            <button type="submit"class="btn btn-primary" name="sbm">Thực hiện</button>
        </p>
        </div>
        ';
    }
}

function edit()
{
    global $conn;
    if(isset($_GET['id']))
        $id = $_GET['id'];
    else
        $id = 0;
    if(isset($_POST['sbm']))
    {
        $img = upload('img');
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $phone = $_POST['phone'];
        $sql = "
        update account set 
        `name`='{$name}',
        `img`='{$img}',
        `email`='{$email}',
        `password`='{$password}',
        `phone`='{$phone}'
        where id=$id";
        if(mysqli_query($conn, $sql))
            message('Thành Công!','anime');
        else
            message('Thất bại!','anime');
    }
    else
    {
        $sql = "select * from account where id = $id";
        $result = $inst->query($conn,$sql);
        $row = $inst->fetch_assoc($result);
        echo '
        <div style="padding:1%">
        <form action="" method="POST" enctype="multipart/form-data">
        <p>
            <label for="name">Name</label>
            <input class="form-control" name="name"  type="text" value="'.$row['name'].'" />
        </p>
        <p>
            <label for="name">Ảnh</label>
            <input class="form-control" name="img"  type="file" />
        </p>
        <p>
            <label for="inputEmail">Email address</label>
            <input class="form-control" name="email"  type="email" value="'.$row['email'].'" />
        </p>
        <p>
            <label for="Password">Password</label>
            <input class="form-control" name="password"  type="password" value="'.$row['password'].'"/>
        </p>
        <p>
            <label for="phone">Phone</label>
            <input class="form-control" name="phone"  type="text" value="'.$row['phone'].'"/>
        </p>
        <p>
            <button type="submit"class="btn btn-primary" name="sbm">Thực hiện</button>
        </p>
        </div>
        ';
    }
}

function manage()
{
    global $conn;
    $data=
    "<table class='table' style='color:white;'>
    <tr>
        <td>ID</td>
        <td>Image</td>
        <td>Name</td>
        <td>Phone</td>
        <td>Date</td>
        <td>Edit</td>
        <td>Delete</td>
        <td>Lock</td>
    </tr>";
    $stt = 1;
    $sql = 'select * from account';
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result))
    {
        if($row['status'])
        $status = "<a href='index.php?cmd=account&action=status&id=".$row['id']."&status=".$row['status']."' class='btn btn-success'>Lock</a>";
        else
        $status = "<a href='index.php?cmd=account&action=status&id=".$row['id']."&status = ".$row['status']."' class='btn btn-secondary'>Unlock</a>";
        $data .="
        <tr><td>".$stt++."</td>
            <td><img src='../img/".$row['img']."' width='80'></td>
            <td>".$row['name']."</td>
            <td>".$row['phone']."</td>
            <td>".$row['date']."</td>
            <td><a href='index.php?cmd=account&action=edit&id=".$row['id']."' class='btn btn-warning'>Edit</a></td>
            <td><a href='index.php?cmd=account&action=del&id=".$row['id']."' class='btn btn-danger'>Delete</a></td>
            <td>".$status."</td>
        </tr>";
    }
    $data.='</table>';
    echo $data;
}
?>

<section class="blog-details spad">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <div class="blog__details__title">
                    <div class="blog__details__social">
                        <a href="index.php?cmd=account&action=add" class="facebook">Add new Account</a>
                        <a href="index.php?cmd=account&action=edit" class="twitter">Edit Info</a>
                        <a href="index.php?cmd=account&action=manage" class="pinterest">Manage Account</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
            <?php
            if(isset($_GET['action']))
                $action=$_GET['action'];
            else 
                $action = 'manage';
            
            switch($action)
            {
                case 'edit': edit(); break;
                case 'status': status(); break;
                case 'add': add(); break;
                case 'del': del(); break;
                default: manage();
            }
            ?>
            </div>
        </div>
    </div>
</section>