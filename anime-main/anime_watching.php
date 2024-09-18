<?php
if(isset($_GET['id_anime']))
    $id_anime = $_GET['id_anime'];
else
    $id_anime = 0;

    $sql_anime = "select * from anime where anime.id=$id_anime";
    $result_anime = mysqli_query($conn, $sql_anime);
    $row = mysqli_fetch_assoc($result_anime);
?>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index.php"><i class="fa fa-home"></i> Home</a>
                        <a href="index.php?cmd=categories">Categories</a>
                        <a href="#">Romance</a>
                        <span><?php echo $row['name'] ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="anime__video__player">
                        <video id="player" playsinline controls data-poster="img/<?php echo $row['img_bg']?>">
                            <source src="videos/1.mp4" type="video/mp4" />
                            <!-- Captions are optional -->
                            <track kind="captions" label="English captions" src="#" srclang="en" default />
                        </video>
                    </div>
                    <div class="anime__details__episodes">
                        <div class="section-title">
                            <h5>List Name</h5>
                        </div>
                        <a href="#">Ep 01</a>
                        <a href="#">Ep 02</a>
                        <a href="#">Ep 03</a>
                        <a href="#">Ep 04</a>
                        <a href="#">Ep 05</a>
                        <a href="#">Ep 06</a>
                        <a href="#">Ep 07</a>
                        <a href="#">Ep 08</a>
                        <a href="#">Ep 09</a>
                        <a href="#">Ep 10</a>
                        <a href="#">Ep 11</a>
                        <a href="#">Ep 12</a>
                        <a href="#">Ep 13</a>
                        <a href="#">Ep 14</a>
                        <a href="#">Ep 15</a>
                        <a href="#">Ep 16</a>
                        <a href="#">Ep 17</a>
                        <a href="#">Ep 18</a>
                        <a href="#">Ep 19</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="anime__details__review">
                        <div class="section-title">
                            <h5>Reviews</h5>
                        </div>
                        <?php
                        $sql = "select * from anime_comment join user on anime_comment.id_user = user.id where anime_comment.id_anime = $id_anime";
                        $result = mysqli_query($conn, $sql);
                        $data = "";
                        while($rows = mysqli_fetch_assoc($result))
                            $data .= '
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/user/'.$rows['img_avatar'].'" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>'.$rows['name'].' - <span>1 Hour ago</span></h6>
                                    <p>'.$rows['comment'].'</p>
                                </div>
                            </div>
                            ';
                        echo $data;
                        ?>
                        
                    <div class="anime__details__form">
                        <div class="section-title">
                            <h5>Your Comment</h5>
                        </div>
                        <form action="#">
                            <textarea placeholder="Your Comment"></textarea>
                            <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->