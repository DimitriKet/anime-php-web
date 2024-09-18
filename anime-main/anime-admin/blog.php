<?php
function add()
{
    global $conn;
    if(isset($_POST['sbm']))
    {
        $img = upload('img');
        $name = $_POST['name'];
        $date = $_POST['date'];
        $content = $_POST['content'];
        $sql = "
        INSERT INTO `blog` ( `img`, `name`, `date`, `content`) 
        VALUES  ('{$img}','{$name}','{$date}','{$content}')";
        if(mysqli_query($conn, $sql))
            message('Thành Công!','blog');
        else
            message('Thất bại!','blog');
    }
    else
    {
        echo '
        <div class="blog__details__item__text" style="color:white">
        <form action="" method="POST" enctype="multipart/form-data">
        <div class="col-lg-6">
            <label for="image">Image</label>
            <input class="form-control" name="img" type="file"/>
        </div>
        <div class="col-lg-6">
            <label for="name">Name</label>
            <input class="form-control" name="name" type="text" value=""/>
        </div>
        <div class="col-lg-6">
            <label for="date" class="form-label">Date</label>
            <input class="form-control" name="date" type="text" value=""/>
        </div>
        <div class="col-lg-12">
            <label for="content">Content</label>
            <textarea class="form-control" name="content" id="editor" rows="7"></textarea>
        </div>
        <div class="col-lg-4">
            <button type="submit"class="btn btn-primary" name="sbm">Thực hiện</button>
        </div>
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
        $date = $_POST['date'];
        $content = $_POST['content'];

        if ($img != '')
            $sql = "
            update blog set 
            `img`='{$img}',
            `name`='{$name}',
            `date`='{$date}',
            `content`='{$content}'
            where id=$id";
        else
            $sql = "
            update blog set 
            `name`='{$name}',
            `date`='{$date}',
            `content`='{$content}'
            where id=$id";
        if(mysqli_query($conn, $sql))
            message('Thành Công!','blog');
        else
            message('Thất bại!','blog');
    }
    else
    {   
        $sql = "select * from blog where blog.id = $id";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        echo '
        <div class="blog__details__item__text" style="color:white">
        <form action="" method="POST" enctype="multipart/form-data">
        <div class="col-lg-6">
            <label for="image">Image</label>
            <input class="form-control" name="img" type="file"/>
        </div>
        <div class="col-lg-6">
            <label for="name">Name</label>
            <input class="form-control" name="name" type="text" value="'.$row['name']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="date" class="form-label">Date</label>
            <input class="form-control" name="date" type="text" value="'.$row['date']. '"/>
        </div>
        <div class="col-lg-12">
            <label for="content">Content</label>
            <textarea class="form-control" name="content" id="editor" rows="7">'.$row['content']. '</textarea>
        </div>
        <div class="col-lg-4">
            <button type="submit"class="btn btn-primary" name="sbm">Thực hiện</button>
        </div>
        </div>
        ';
    }
}

function del()
{   
    global $conn;
    if(isset($_GET['id']))
        $id = $_GET['id'];
    else
        $id = 0;
    $sql = "delete from news where id=$id";
    if(mysqli_query($conn, $sql))
        message('Thành Công!','blog');
    else
        message('Thất bại!','blog');
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
        <td>Date</td>
        <td>Content</td>
        <td>More details</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>";
    $id = 1;
    $sql = 'select * from blog';
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result))
    {
        $data .="
        <tr><td>".$id++."</td>
            <td><img src='../img/".$row['img']."' width='80'></td>
            <td>".$row['name']."</td>
            <td>".$row['date']."</td>
            <td>".limitStrlen($row['content'], 50)."</td>
            <td><a href='index.php?cmd=blog_details&id=".$row['id']."' class='btn btn-info'>More</a></td>
            <td><a href='index.php?cmd=blog&action=edit&id=".$row['id']."' class='btn btn-warning'>Edit</a></td>
            <td><a href='index.php?cmd=blog&action=del&id=".$row['id']."' class='btn btn-danger'>Delete</a></td>
        </tr>";
    }
    $data.='</table>';
    echo $data;
}
?>

<section class="blog-details spad">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <div class="blog__details__title">
                    <div class="blog__details__social">
                        <a href="index.php?cmd=blog&action=add" class="facebook">Add new blog</a>   
                        <a href="index.php?cmd=blog&action=manage" class="pinterest">Manage blog</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
            <?php
            if(isset($_GET['action']))
                $action = $_GET['action'];
            else 
                $action='manage';
            
            switch($action)
            {
                case 'edit': edit(); break;
                case 'more': more(); break;
                case 'add': add(); break;
                case 'del': del(); break;
                default: manage();
            }
            ?>
            </div>
        </div>
</section>