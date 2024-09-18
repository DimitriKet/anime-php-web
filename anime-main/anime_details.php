<?php
if (isset($_GET['id_anime']))
{
    $id_anime = $_GET['id_anime'];
}
$sql = "select * from `anime`, `anime_details` where `anime`.id = {$id_anime} and `anime`.id = `anime_details`.id_anime";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>

<!-- Anime Section Begin -->
<section class="anime-details spad">
<div class="container">
    <div class="anime__details__content">
        <div class="row">
            <div class="col-lg-3">
                <div class="anime__details__pic set-bg" data-setbg='img/<?php echo $row['img'] ?>'>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="anime__details__text">
                    <div class="anime__details__title">
                        <h3><?php echo $row['name'] ?></h3>
                        <span><?php echo $row['name_diff'] ?></span>
                    </div>
                    <p><?php echo $row['description'] ?></p>
                    <div class="anime__details__widget">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <ul>
                                    <li><span>Type:</span><?php echo $row['types']?></li>
                                    <li><span>Studios:</span><?php echo $row['studios']?></li>
                                    <li><span>Date aired:</span><?php echo $row['date']?></li>
                                    <li><span>Status:</span><?php echo $row['status']?></li>
                                    <li><span>Genre:</span><?php echo $row['gerne']?></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <ul>
                                    <li><span>Scores:</span>7.31 / 1,515</li>
                                    <li><span>Rating:</span>8.5 / 161 times</li>
                                    <li><span>Duration:</span><?php echo $row['duration']?></li>
                                    <li><span>Quality:</span>HD</li>
                                    <li><span>Episode:</span><?php echo $row['eps']?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="anime__details__btn">
                        <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Follow</a>
                        <a href="index.php?cmd=anime_watching&id_anime=<?php echo $row['id']?>" class="watch-btn"><span>Watch Now</span> <i
                            class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Anime Section End -->