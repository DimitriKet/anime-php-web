<?php
global $conn;
$sql = 'select * from blog';
$result = mysqli_query($conn, $sql);

?>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Our Blog</h2>
                        <p>Welcome to the official Anime blog.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <?php 
                            $data = "";
                            $id = 1;
                            while ($row = mysqli_fetch_assoc($result))
                            {
                                $data .= '
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__item small__item set-bg" data-setbg="img/'.$row['img'].'">
                                        <div class="blog__item__text">
                                            <p><span class="icon_calendar"></span>'.$row['date'].'</p>
                                            <h4><a href="index.php?cmd=blog_details&id='.$id.'">'.$row['name'].'</a></h4>
                                        </div>
                                    </div>
                                </div>';
                                $id++;
                            }
                            echo $data;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
