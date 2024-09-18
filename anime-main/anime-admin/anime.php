<?php
function add()
{
    global $conn;
    if(isset($_POST['sbm']))
    {
        $img = upload('img');
        $img_bg = upload('img_bg');
        $name = $_POST['name'];
        $name_diff = $_POST['name_diff'];
        $description = $_POST['description'];
        $sql = "
        INSERT INTO `anime` ( `img`, `img_bg`, `name`, `name_diff`, `description`) 
        VALUES  ('{$img}', '{$img_bg}', '{$name}','{$name_diff}','{$description}')";
        var_dump($sql);
        if(mysqli_query($conn, $sql))
        {
            $id_anime = mysqli_insert_id($conn);
            $types = $_POST['types'];
            $studios = $_POST['studios'];
            $date = $_POST['date'];
            $status = $_POST['status'];
            $gerne = $_POST['gerne'];
            $duration = $_POST['duration'];
            $eps = $_POST['eps'];
            $sql = "
            INSERT INTO `anime_details`(`id_anime`, `types`, `studios`, `date`, `status`, `gerne`, `duration`, `eps`) VALUES ('{$id_anime}', '{$types}','{$studios}','{$date}','{$status}','{$gerne}','{$duration}','{$eps}')
            ";
            if (mysqli_query($conn, $sql))  
                message('Thành Công!','anime');
            else
                message('Thất bại!','anime');
        }
        else
            message('Thất bại!','anime');
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
                <label for="imageBG">Image 2</label>
                <input class="form-control" name="img_bg" type="file"/>
            </div>
            <div class="col-lg-6">
                <label for="name">Name</label>
                <input class="form-control" name="name" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="differentName">Different Name</label>
                <input class="form-control" name="name_diff" type="text" value="" />
            </div>
            <div class="col-lg-12">
                <label for="description">Description</label>
                <textarea class="form-control" name="description" id="editor" rows="7"></textarea>
            </div>
            <div class="col-lg-6">
                <label for="types" class="form-label">Types</label>
                <input class="form-control" name="types" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="studios" class="form-label">Studios</label>
                <input class="form-control" name="studios" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="date" class="form-label">Dates</label>
                <input class="form-control" name="date" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="status" class="form-label">Status</label>
                <input class="form-control" name="status" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="gerne" class="form-label">Gernes</label>
                <input class="form-control" name="gerne" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="duration" class="form-label">Duration</label>
                <input class="form-control" name="duration" type="text" value=""/>
            </div>
            <div class="col-lg-6">
                <label for="eps" class="form-label">Eps</label>
                <input class="form-control" name="eps" type="text" value=""/>
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
        $img_bg = upload('img_bg');
        $name = $_POST['name'];
        $name_diff = $_POST['name_diff'];
        $description = $_POST['description'];

        $types = $_POST['types'];
        $studios = $_POST['studios'];
        $date = $_POST['date'];
        $status = $_POST['status'];
        $gerne = $_POST['gerne'];
        $duration = $_POST['duration'];
        $eps = $_POST['eps'];

        if ($img != '' && $img_bg != '')
            $sql = "
            update anime set 
            `img`='{$img}',
            `img_bg`='{$img_bg}',
            `name`='{$name}',
            `name_diff`='{$name_diff}',
            `description`='{$description}'
            where id=$id";
        elseif ($img != '')
            $sql = "
            update anime set 
            `img`='{$img}',
            `name`='{$name}',
            `name_diff`='{$name_diff}',
            `description`='{$description}'
            where id=$id";
        elseif ($img_bg != '')
            $sql = "
            update anime set 
            `img_bg`='{$img_bg}',
            `name`='{$name}',
            `name_diff`='{$name_diff}',
            `description`='{$description}'
            where id=$id";
        else 
            $sql = "
            update anime set 
            `name`='{$name}',
            `name_diff`='{$name_diff}',
            `description`='{$description}'
            where id=$id";
            
        if(mysqli_query($conn, $sql))
        {
            $sql = "
            UPDATE `anime_details` SET
            `types`='{$types}',
            `studios`='{$studios}',
            `date`='{$date}',
            `status`='{$status}',
            `gerne`='{$gerne}',
            `duration`='{$duration}',
            `eps`='{$eps}' 
            WHERE id_anime = $id
            ";
            if(mysqli_query($conn, $sql))
                message('Thành Công!','anime');
            else
                message('Thất bại!','anime');
        }
        else
            message('Thất bại!','anime');
    }
    else
    {   
        $sql = "select * from anime, anime_details where anime.id = $id and anime.id = anime_details.id_anime";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        echo '
        <div class="blog__details__item__text" style="color:white">
        <form action="" method="POST" enctype="multipart/form-data">
        <div class="col-lg-6">
            <label for="image">Image</label>
            <input class="form-control" name="img" type="file" value="'.$row['img'].'"/>
        </div>
        <div class="col-lg-6">
            <label for="image_bg">Image 2</label>
            <input class="form-control" name="img_bg" type="file" value="'.$row['img_bg'].'"/>
        </div>
        <div class="col-lg-6">
            <label for="name">Name</label>
            <input class="form-control" name="name" type="text" value="'.$row['name']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="differentName">Different Name</label>
            <input class="form-control" name="name_diff" type="text" value="'.$row['name_diff']. '" />
        </div>
        <div class="col-lg-12">
            <label for="description">Description</label>
            <textarea class="form-control" name="description" id="" rows="7">'.$row['description']. '</textarea>
        </div>
        <div class="col-lg-6">
            <label for="types" class="form-label">Types</label>
            <input class="form-control" name="types" type="text" value="'.$row['types']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="studios" class="form-label">Studios</label>
            <input class="form-control" name="studios" type="text" value="'.$row['studios']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="date" class="form-label">Dates</label>
            <input class="form-control" name="date" type="text" value="'.$row['date']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="status" class="form-label">Status</label>
            <input class="form-control" name="status" type="text" value="'.$row['status']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="gerne" class="form-label">Gernes</label>
            <input class="form-control" name="gerne" type="text" value="'.$row['gerne']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="duration" class="form-label">Duration</label>
            <input class="form-control" name="duration" type="text" value="'.$row['duration']. '"/>
        </div>
        <div class="col-lg-6">
            <label for="eps" class="form-label">Eps</label>
            <input class="form-control" name="eps" type="text" value="'.$row['eps']. '"/>
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
        message('Thành Công!','anime');
    else
        message('Thất bại!','anime');
}

function manage()
{
    global $conn;
    $data=
    "<table class='table' style='color:white;'>
    <tr>
        <td>ID</td>
        <td>Ảnh</td>
        <td>Name</td>
        <td>Another name</td>
        <td>Description</td>
        <td>More details</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>";
    $id = 1;
    $sql = 'select * from anime';
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result))
    {
        $data .="
        <tr><td>".$id++."</td>
            <td><img src='../img/".$row['img']."' width='80'></td>
            <td>".$row['name']."</td>
            <td>".$row['name_diff']."</td>
            <td>".limitStrlen($row['description'], 50)."</td>
            <td><a href='index.php?cmd=anime_details&id=".$row['id']."' class='btn btn-info'>More</a></td>
            <td><a href='index.php?cmd=anime&action=edit&id=".$row['id']."' class='btn btn-warning'>Edit</a></td>
            <td><a href='index.php?cmd=anime&action=del&id=".$row['id']."' class='btn btn-danger'>Delete</a></td>
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
                        <a href="index.php?cmd=anime&action=add" class="facebook">Add new anime</a>
                        <a href="index.php?cmd=anime&action=manage" class="pinterest">Manage anime</a>
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