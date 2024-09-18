<?php
global $conn;

if(isset($_POST['sbm']))
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];

    $sql = "
    INSERT INTO `comment_blog`(`name`, `email`, `comment`) 
    VALUES ('{$name}','{$email}','{$comment}')
    ";
    if(mysqli_query($conn, $sql))     
        echo "Successful!";
        //message('Thành Công!','blog_details');
    else
        echo "Failed!";
        //message('Thất bại!','blog_details');
}

if(isset($_GET['id']))
    $id = $_GET['id'];
else
    $id = 0;

$sql = "select * from blog where id=$id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <div class="blog__details__title">
                    <h6>Action, Magic <span>- <?php echo $row['date'] ?></span></h6>
                    <h2><?php echo $row['name'] ?></h2>
                    <div class="blog__details__social">
                        <a href="#" class="facebook"><i class="fa fa-facebook-square"></i> Facebook</a>
                        <a href="#" class="pinterest"><i class="fa fa-pinterest"></i> Pinterest</a>
                        <a href="#" class="linkedin"><i class="fa fa-linkedin-square"></i> Linkedin</a>
                        <a href="#" class="twitter"><i class="fa fa-twitter-square"></i> Twitter</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="blog__details__pic">
                    <img src="img/<?php echo $row['img'] ?>" alt="">
                </div>
            </div>
            <div class="col-lg-8">
                <div class="blog__details__content">
                    <div class="blog__details__text">
                        <?php echo $row['content'] ?>   
                    </div> 
                    <div class="blog__details__tags">
                        <a href="#">Funny</a>
                        <a href="#">Relax</a>
                        <a href="#">Anime</a>
                    </div>
                    <div class="blog__details__btns">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__btns__item">
                                    <h5><a href="#"><span class="arrow_left"></span> Building a Better LiA...</a>
                                    </h5>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__btns__item next__btn">
                                    <h5><a href="#">Mugen no Juunin: Immortal – 21 <span
                                        class="arrow_right"></span></a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__comment">
                            <h4>3 Comments</h4>
                            <div class="blog__details__comment__item">
                                <div class="blog__details__comment__item__pic">
                                    <img src="img/blog/details/comment-1.png" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>John Smith</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                    adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                            <div class="blog__details__comment__item blog__details__comment__item--reply">
                                <div class="blog__details__comment__item__pic">
                                    <img src="img/blog/details/comment-2.png" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>Elizabeth Perry</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                    adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                            <div class="blog__details__comment__item">
                                <div class="blog__details__comment__item__pic">
                                    <img src="img/blog/details/comment-3.png" alt="">
                                </div>
                                <div class="blog__details__comment__item__text">
                                    <span>Sep 08, 2020</span>
                                    <h5>Adrian Coleman</h5>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                    adipisci velit, sed quia non numquam eius modi</p>
                                    <a href="#">Like</a>
                                    <a href="#">Reply</a>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__form">
                            <h4>Leave A Comment</h4>
                            <form action="" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" name="name" placeholder="Name">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" name="email" placeholder="Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea name="comment" placeholder="Message"></textarea>
                                        <button type="submit" class="site-btn" name="sbm">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->