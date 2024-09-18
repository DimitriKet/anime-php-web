-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2024 lúc 09:29 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `anime_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `name`, `img`, `email`, `password`, `phone`, `date`, `status`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', '123', '0834567890', '2024-01-12 15:39:21', 1),
(0, 'Kwan', 'shamiko_img.jpg', 'kwan@gmail.com', '123', '', '2024-04-22 23:33:27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anime`
--

CREATE TABLE `anime` (
  `id` int(5) NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_bg` varchar(100) NOT NULL,
  `name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_diff` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anime`
--

INSERT INTO `anime` (`id`, `img`, `img_bg`, `name`, `name_diff`, `description`) VALUES
(1, '1714107594.jpg', '1714710833.jpg', 'ID:Invaded', 'イド:インヴェイデッド', 'The Mizuhanome System is a highly advanced development that allows people to enter one of the most intriguing places in existence—the human mind. Through the use of so-called \"cognition particles\" left behind at a crime scene by the perpetrator, detectives from the specialized police squad Kura can manifest a criminal\'s unconscious mind as a bizarre stream of thoughts in a virtual world. Their task is to explore this psychological plane, called an \"id well,\" to reveal the identity of the culprit.\r\n\r\nNot just anyone can enter the id wells; the prerequisite is that you must have killed someone yourself. Such is the case for former detective Akihito Narihisago, who is known as \"Sakaido\" inside the id wells. Once a respected member of the police, tragedy struck, and he soon found himself on the other side of the law.\r\n\r\nNevertheless, Narihisago continues to assist Kura in confinement. While his prodigious detective skills still prove useful toward investigations, Narihisago discovers that not everything is as it seems, as behind the seemingly standalone series of murder cases lurks a much more sinister truth.'),
(2, '1714161992.jpg', '1714583162.webp', 'Sousou No Frieren', '葬送のフリーレン', 'During their decade-long quest to defeat the Demon King, the members of the hero\'s party—Himmel himself, the priest Heiter, the dwarf warrior Eisen, and the elven mage Frieren—forge bonds through adventures and battles, creating unforgettable precious memories for most of them.\r\n\r\nHowever, the time that Frieren spends with her comrades is equivalent to merely a fraction of her life, which has lasted over a thousand years. When the party disbands after their victory, Frieren casually returns to her \"usual\" routine of collecting spells across the continent. Due to her different sense of time, she seemingly holds no strong feelings toward the experiences she went through.\r\n\r\nAs the years pass, Frieren gradually realizes how her days in the hero\'s party truly impacted her. Witnessing the deaths of two of her former companions, Frieren begins to regret having taken their presence for granted; she vows to better understand humans and create real personal connections. Although the story of that once memorable journey has long ended, a new tale is about to begin.'),
(3, '1714458183.jpg', '1714583173.jpg', 'Koe no Katachi', '聲の形', 'As a wild youth, elementary school student Shouya Ishida sought to beat boredom in the cruelest ways. When the deaf Shouko Nishimiya transfers into his class, Shouya and the rest of his class thoughtlessly bully her for fun. However, when her mother notifies the school, he is singled out and blamed for everything done to her. With Shouko transferring out of the school, Shouya is left at the mercy of his classmates. He is heartlessly ostracized all throughout elementary and middle school, while teachers turn a blind eye.\r\n\r\nNow in his third year of high school, Shouya is still plagued by his wrongdoings as a young boy. Sincerely regretting his past actions, he sets out on a journey of redemption: to meet Shouko once more and make amends.\r\n\r\nKoe no Katachi tells the heartwarming tale of Shouya\"s reunion with Shouko and his honest attempts to redeem himself, all while being continually haunted by the shadows of his past.'),
(4, '1714493005.jpg', '0', 'Bocchi the Rock! ', 'ã¼ã£ã¡ãƒ»ã–ãƒ»ã‚ã£ãï¼', 'Yearning to make friends and perform live with a band, lonely and socially anxious Hitori \"Bocchi\" Gotou devotes her time to playing the guitar. On a fateful day, Bocchi meets the outgoing drummer Nijika Ijichi, who invites her to join Kessoku Band when their guitarist, Ikuyo Kita, flees before their first show. Soon after, Bocchi meets her final bandmateï¿½the cool bassist Ryou Yamada.\r\n\r\nAlthough their first performance together is subpar, the girls feel empowered by their shared love for music, and they are soon rejoined by Kita. Finding happiness in performing, Bocchi and her bandmates put their hearts into improving as musicians while making the most of their fleeting high school days.'),
(5, '1714493112.jpg', '', 'Spy x Family', 'SPYÃ—FAMILY', 'Corrupt politicians, frenzied nationalists, and other warmongering forces constantly jeopardize the thin veneer of peace between neighboring countries Ostania and Westalis. In spite of their plots, renowned spy and master of disguise \"Twilight\" fulfills dangerous missions one after another in the hope that no child will have to experience the horrors of war.\r\n\r\nIn the bustling Ostanian city of Berlint, Twilight dons the alias of \"Loid Forger,\" an esteemed psychiatrist. However, his true intention is to gather intelligence on prominent politician Donovan Desmond, who only appears rarely in public at his sons school: the prestigious Eden Academy. Enlisting the help of unmarried city hall clerk Yor Briar to act as his wife and adopting the curious six-year-old orphan Anya as his daughter, Loid enacts his master plan. He will enroll Anya in Eden Academy, where Loid hopes she will excel and give him the opportunity to meet Donovan without arousing suspicion.\r\n\r\nUnfortunately for Loid, even a man of his talents has trouble playing the figure of a loving father and husband. And just like Loid is hiding his true identity, Yor, who is an underground assassin known as \"Thorn Princess\" and Anya, an esper who can read people s mindsï¿½have no plans to disclose their own secrets either. Although this picture-perfect family is founded on deception, the Forgers gradually come to understand that the love they share for one another trumps all else.'),
(6, '1714492792.jpg', '0', 'Sora yori mo Tooi Basho', 'å®‡å®™ã‚ˆã‚Šã‚‚é ã„å ´æ‰€ ', 'Filled with an overwhelming sense of wonder for the world around her, Mari Tamaki has always dreamt of what lies beyond the reaches of the universe. However, despite harboring such large aspirations on the inside, her fear of the unknown and anxiety over her own possible limitations have always held her back from chasing them. But now, in her second year of high school, Mari is more determined than ever to not let any more of her youth go to waste. Still, her fear continues to prevent her from taking that ambitious step forwardâ€”that is, until she has a chance encounter with a girl who has grand dreams of her own.\r\n\r\nSpurred by her mother s disappearance, Shirase Kobuchizawa has been working hard to fund her trip to Antarctica. Despite facing doubt and ridicule from virtually everyone, Shirase is determined to embark on this expedition to search for her mother in a place further than the universe itself. Inspired by Shirase s resolve, Mari jumps at the chance to join her. Soon, their efforts attract the attention of the bubbly Hinata Miyake, who is eager to stand out, and Yuzuki Shiraishi, a polite girl from a high class background. Together, the four spirited girls set sail toward the frozen south, all in search of something great.'),
(7, '1714492177.jpg', '0', 'One Punch Man', 'ãƒ¯ãƒ³ãƒ‘ãƒ³ãƒžãƒ³', 'The seemingly unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, Saitama relentlessly trained for three years, losing all of his hair in the process. Now, Saitama is so powerful, he can defeat any enemy with just one punch. However, having no one capable of matching his strength has led Saitama to an unexpected problemï¿½he is no longer able to enjoy the thrill of battling and has become quite bored.\r\n\r\nOne day, Saitama catches the attention of 19-year-old cyborg Genos, who witnesses his power and wishes to become Saitama s disciple. Genos proposes that the two join the Hero Association in order to become certified heroes that will be recognized for their positive contributions to society. Saitama, who is shocked that no one knows who he is, quickly agrees. Meeting new allies and taking on new foes, Saitama embarks on a new journey as a member of the Hero Association to experience the excitement of battle he once felt.'),
(8, '1714493185.jpg', '0', 'Mob Psycho 100', 'ãƒ¢ãƒ–ã‚µã‚¤ã‚³100', 'Eighth-grader Shigeo \"Mob\" Kageyama has tapped into his inner wellspring of psychic prowess at a young age. But the power quickly proves to be a liability when he realizes the potential danger in his skills. Choosing to suppress his power, Mobs only present use for his ability is to impress his longtime crush, Tsubomi, who soon grows bored of the same tricks.\r\n\r\nIn order to effectuate control on his skills, Mob enlists himself under the wing of Arataka Reigen, a con artist claiming to be a psychic, who exploits Mobs powers for pocket change. Now, exorcising evil spirits on command has become a part of Mobs daily, monotonous life. However, the psychic energy he exerts is barely the tip of the iceberg; if his vast potential and unrestrained emotions run berserk, a cataclysmic event that would render him completely unrecognizable will be triggered. The progression toward Mobs explosion is rising and attempting to stop it is futile.'),
(9, '1714492938.jpg', '0', 'Machikado Mazoku', 'ã¾ã¡ã‚«ãƒ‰ã¾ãžã', 'After a strange dream of a mysterious ancestor, high school student Yuuko Yoshida wakes to see that she has grown demonic horns and a tail. Dazed and confused, her mother reveals to her a dark family secret: her family is descended from a Dark Clan that was banished to live powerless and destitute by their mortal enemies, the magical girls of the Light Clan. The only way to lift their ancestry s curse is for Yuuko to find a magical girl, murder her, and splatter her blood all over her ancestor s Demon God statue.\r\n\r\nFortunately for Shadow Mistress Yuuko, a magical girl saves her from being run over by an oncoming truck. Unfortunately, Momo Chiyoda happens to be Yuuko s classmate at Sakuragaoka High and is much stronger than her in both strength and endurance. Taking pity on her wimpy assailant, the magical girl agrees to train Yuuko and help her unlock her dormant powers. Now, Yuuko must rise up and defeat her generous frenemy to save her family from the terrible grip of poverty.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anime_comment`
--

CREATE TABLE `anime_comment` (
  `id` int(5) NOT NULL,
  `id_anime` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anime_details`
--

CREATE TABLE `anime_details` (
  `id` int(5) NOT NULL,
  `id_anime` int(5) NOT NULL,
  `types` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `studios` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gerne` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `anime_details`
--

INSERT INTO `anime_details` (`id`, `id_anime`, `types`, `studios`, `date`, `status`, `gerne`, `duration`, `eps`) VALUES
(1, 1, 'TV', 'NAZ', '2020-01-06', 'Finished', 'Mystery, Police, Psychological, Sci-Fi, Suspense', '', 13),
(2, 2, 'TV', 'Madhouse', '2023-09-23', 'Finished', 'Adventure, Drama, Fantasy', '24 min.', 28),
(3, 3, 'Movie', 'Kyoto Animation', '2016-09-17', 'Finished', 'Award Winning, Drama', '2hr 10min.', 1),
(4, 4, 'TV', 'CloverWorks', '2022-09-09', 'Finished', 'Comedy', '23 min.', 12),
(5, 5, 'TV', 'Wit Studio, CloverWorks', '2022-04-09', 'Finished', 'Action, Award Winning, Comedy', '24 min.', 12),
(6, 6, 'TV', 'Madhouse', '2018-01-02', 'Finished', 'Adventure, Comedy, Drama', '23 min.', 13),
(7, 7, 'TV', 'Madhouse', '2015-09-05', 'Finished', 'Action, Comedy', '24 min.', 12),
(8, 8, 'TV', 'Bones', '2016-07-11', 'Finished', 'Action, Comedy, Supernatural', '24 min.', 12),
(9, 9, 'TV', 'J.C.Staff', '2019-07-12', 'Finished', 'Comedy, Fantasy', '24 min.', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anime_stat`
--

CREATE TABLE `anime_stat` (
  `id` int(5) NOT NULL,
  `id_anime` int(5) NOT NULL,
  `views` int(10) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `anime_stat`
--

INSERT INTO `anime_stat` (`id`, `id_anime`, `views`, `rate`) VALUES
(1, 1, 34223, 4.5),
(2, 2, 25511, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(5) NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `img`, `name`, `date`, `content`, `status`) VALUES
(1, '1714409969.jpg', 'Review Anime: Isekai Ojisan', '2023-01-23', '<p>Nếu như bạn cảm thấy quá chán với thể loại isekai trong vài năm trở lại bởi những motif copy – paste, được xào đi nấu lại thì hãy đến với Isekai Ojisan để tận hưởng một tác phẩm hoàn toàn khác biệt mà chắc chắn sẽ không làm bạn thất vọng.</p><p><strong>Thông tin sơ lược</strong></p><ul><li>Tên: Isekai Ojisan, Uncle from Another World</li><li>Thể loại: Fantasy, Comedy</li><li>Thời lượng: 13 tập</li><li>Năm phát hành: 2022</li><li>Studio: AtelierPontdarc</li></ul><p><strong>Nội dung</strong></p><p>&nbsp;</p><p>Sau một vụ va chạm với xe tải, chú của Takafumi Takaoka, Yousuke “Ojisan” Shibazaki, nằm hôn mê suốt 17 năm. Khi tỉnh lại, Ojisan bắt đầu nói lảm nhảm bằng tiếng nước ngoài và tiết lộ rằng mình đã được chuyển đến một thế giới phép thuật tên là Gran Bahamal. Takafumi cho rằng những gì chú mình nói là ngáo đá, cho đến khi Ojisan đọc một câu thần chú làm cho cốc nước lơ lửng trong không trung. Sau đó, hai chú cháu này đã tạo một kênh YouTube làm các video về phép thuật, đồng thời cùng khám phá những điều mà ông chú đã trải qua trong 17 năm tại dị giới.</p><p><strong>Cảm nhận</strong></p><p>Điều đầu tiên làm mình cảm thấy hứng thú ở bộ phim này chính là ở cách mở đầu câu chuyện của nó. Nếu như những anime isekai khác thường khởi đầu bằng việc nhân vật chính được đưa sang thế giới khác (vì nhiều lý do khác nhau) thì Isekai Ojisan lại làm ngược lại. Bộ phim bắt đầu ở 17 năm sau, khi nhân vật chính đã trở về từ dị giới. Nhưng điều đặc biệt ở đây anh ta còn mang theo cả những năng lực đã có được ở thế giới khác về Trái Đất. Cách mở đầu ấy khiến người ta tự hỏi liệu anh ta đã trải qua những gì trong khoảng thời gian sống tại dị giới, và liệu trở về với sức mạnh ở trong tay thì anh ta sẽ sử dụng nó như thế nào?</p><p><img src=\"https://img1.ak.crunchyroll.com/i/spire4/f862e0e10dfb54a50d033adb960015ff1656240318_main.jpg\" alt=\"Crunchyroll - Old Guy Gets Retro in Uncle from Another World Non-Credit OP\" width=\"1920\" height=\"1080\"></p><p>Isekai Ojisan có một cốt truyện tương đối đơn giản, câu chuyện chủ yếu xoay quanh hai vấn đề chính: cách ông chú hòa nhập với thế giới hiện đại và những thước phim tua ngược về khoảng thời gian chú ta ở dị giới. Mặc dù chỉ là những “thước phim xem lại” nhưng bộ phim vẫn lôi cuốn người xem bởi cách xây dựng nhân vật và tính huống thú vị, đạp đổ biết bao motif cũ mèm trong những tác phẩm cùng loại. Chúng ta đã quen với những bộ isekai với nhân vật chính bá đạo, hack game, hút gái, lập harem các kiểu thì Ojisan lại mang đến một hình ảnh hoàn toàn trái ngược.</p><p>Không có một cuộc sống trong mơ như biết bao anh main isekai khác, ông chú của chúng ta khi sang dị giới phải chịu đựng biết bao nhiêu là đau khổ. Trời không ban cho một khuôn mặt đẹp trai khiến chú ta luôn bị nhầm là quái vật, bị tấn công, bị đánh đuổi, bị xa lánh, bị cô lập, bị đem nhốt vào ngục… Cuộc sống ở thế giới khác của chú ta quả thật không dễ gì, khiến ta lại càng tìm hiểu sâu hơn về nó. Nhìn chung, đó là một cốt truyện đơn giản nhưng vẫn có thể khiến người xem hứng thú.</p><p><img src=\"https://hivicon.com/wp-content/uploads/2022/09/Isekai-Ojisan-2022-9-1-477409.jpg\" alt=\"\" width=\"1024\" height=\"576\"></p><p>Chú cháu ngồi xem lại những thước phim ở dị giới.</p><p>Isekai Ojisan tập trung xây dựng yếu tố comedy, và nó thật sự đã thành công trong việc mang đến cho người xem một tác phẩm vô cùng giải trí. Bộ phim có thể khiến ta cười bởi những tình huống đơn giản hay tương tác giữa các nhân vật. Sự thú vị của nó còn đến từ cách xây dựng tình tiết rất ngẫu hứng mà ta khó lòng đoán trước được. Bên cạnh đó, tác phẩm còn khiến người xem bật cười bởi sự hụt hẫng. Bộ phim xây dựng tình tiết đầy đủ theo kết cấu ba hồi mà phần kết thường đập vào mặt người xem bởi nó không chẳng như ta tưởng tượng, khác xa vạn dặm những suy đoán của ta theo diễn biến trước đó, điều đó khiến ta “hụt hẫng”, hụt hẫng đến mức phải phì cười.</p><p>Ông chú nhà ta nói những lời chân thành với nàng Elf, mời cổ đến phòng mình trong đêm trăng lãng mạn ngây ngất hơi men. Chúng ta mong chờ gì tiếp theo? Phải chăng là cảnh tình tứ mặn nồng của hai người? Anime làm ngược lại, khi về tới phòng thì ông chú cảm ơn cô Elf vì đã dẫn mình về phòng rồi đóng cửa ngủ tới sáng, để lại nàng Elf lẫn người xem đớ người vì thất vọng. (Tôi kể thế này thì có thể bạn cảm thấy không hay, nhưng cứ thử xem đi, bạn sẽ không nhịn được cười đâu). Isekai Ojisan không biết bao lần làm ta hụt hẫng, ấy vậy mà lần nào cũng phải bật cười.</p><p><strong>Nhân vật</strong></p><p><img src=\"https://anime.atsit.in/l/wp-content/uploads/2022/12/ngay-phat-hanh-tap-13-cua-isekai-ojisan-bi-tri-hoan-do-dot-bung-phat-covid-cua-trung-quoc-chu-tu-the-gioi-khac-tap-13-se-khong-tro-lai-tren-netflix-cho-den-nam-2023.jpg\" alt=\"Ngày phát hành tập 13 của Isekai Ojisan bị trì hoãn do đợt bùng phát COVID của Trung Quốc: Chú từ thế giới khác Tập 13 sẽ không trở lại trên Netflix\" width=\"780\" height=\"439\"></p><p>Isekai Ojisan sở hữu dàn nhân vật với những mảng tính cách đa dạng và thú vị. Trước tiên ta nói về Oji – san, một nhân vật chính isekai có lẽ bạn chưa bao giờ gặp: vẻ bề ngoài không đẹp (xấu ma chê quỷ hờn), bị lầm tưởng là quái vật, bị đánh đuổi, suýt mất mạng không biết bao nhiêu lần… Chú ta cuồng game đến độ áp dụng kinh nghiệm mà mình học hỏi được trong game vào cuộc sống. Bên cạnh đó, chú ta cũng là kẻ khá khờ khạo và cực kỳ kém trong khoản nhận biết thính. Ở dị giới, chú gặp cô nàng Elf tsundere, công chúa băng tộc Mabel tính tình thất thường với những suy nghĩ đần độn và team anh hùng Alicia tay mơ.</p><p>Khi trở về Trái Đất, Oji – san gặp thằng cháu Takafumi với nội tâm chất chứa nhiều suy tư, thích hóng drama của ông chú và cũng rất non trong việc nhận biết thính. Và Sumika, người “có lẽ” là bình thường nhất trong các nhân vật, trừ cái quá khứ “đáng bị chôn” để lại nhiều ấn tượng khó phai cho Takafumi. Sự đa dạng về mặt tính cách mà nhìn ai trông cũng có chút gì đó không bình thường khiến cho sự tương tác giữa các vai diễn là vô cùng thú vị. Với trung tâm là vai ông chú thì ghép cặp với bất kỳ một nhân vật nào cũng tạo ra chemistry đặc sắc và những màn hài kịch khiến ta không thể nào nhịn cười.</p><p><img src=\"https://lostinanime.com/wp-content/uploads/2022/08/Isekai-Ojisan-05-07.jpg\" alt=\"Isekai Ojisan - 05 - 07 - Lost in Anime\" width=\"934\" height=\"525\"></p><p><strong>Hình ảnh</strong></p><p><img src=\"https://scontent.fsgn5-14.fna.fbcdn.net/v/t1.15752-9/346138456_576924007764122_674266984653299398_n.png?_nc_cat=106&amp;ccb=1-7&amp;_nc_sid=ae9488&amp;_nc_ohc=ap8e3jvye7IAX-6FdoV&amp;_nc_ht=scontent.fsgn5-14.fna&amp;oh=03_AdT8PlfEnkepwGr7rXNk5vRSIeoSKb8QCHCBVmISyAkM9g&amp;oe=64924568\" alt=\"Không có mô tả.\"></p><p>Về phần hình ảnh của Isekai Ojisan nhìn chung là thuộc vào dạng tốt. Tuy không quá xuất sắc nhưng cũng ổn hơn so với nhiều tác phẩm cùng thể loại. Art style khá đẹp, thiết kế các nhân vật nữ ưa nhìn, dù không quá đặc biệt. Đáng chú ý nhất phải nói tới ông chú với ngoại hình xấu đau xấu đớn khó mà lẫn đi đâu được. Phần biểu cảm nhân vật được thể hiện rất đa dạng, đặc biệt là mấy cảnh sốc nhìn rất hài hước. Background khá chi tiết, một vài cảnh phim được thiết kế khá chỉn chu. Hiệu ứng hình ảnh khá tốt, các phân cảnh dùng phép thuật hay cháy nổ các thứ xem tương đối bắt mắt. Animation khá mượt, chưa quá ấn tượng nhưng đủ xem, các phân cảnh hành đông xem khá ổn. Phần CG hơi phèn một chút, thiết kế mấy con quái hơi chán đời. Một điểm đáng hoang nghênh nữa là dù gặp nhiều vấn đề và bị hoãn khá nhiều nhưng phim vẫn giữ được sự ổn định về mặt hình ảnh.</p><p><img src=\"https://assets.pikiran-rakyat.com/crop/260x26:2132x1054/x/photo/2022/08/17/3062457971.png\" alt=\"Nonton dan Download Uncle from Another World (Isekai Ojisan) Episode 5 Subtitle Indonesia English disini bukan dari Anoboy, Otakudesu.\" width=\"1872\" height=\"1028\"></p><p><img src=\"https://lostinanime.com/wp-content/uploads/2022/07/Isekai-Ojisan-01-36.jpg\" alt=\"Isekai Ojisan - 01 - 36 - Lost in Anime\" width=\"1315\" height=\"739\"></p><p><strong>Âm nhạc</strong></p><p>Phần nhạc của Isekai Ojisan cũng rất đáng chú ý. Cá nhân mình thấy cả OP lẫn ED đều hay, nhất là OP với giai điệu sôi động nghe rất vui tai. Soundtrack của phim nhiều, sơ sơ cũng phải cỡ 50 bản. Nhạc nền được lồng ghép tốt, nhất là mấy bản như Fantastical Adventures, Greatest Chant khơi gợi được bối cảnh fantasy. Một số bản thể hiện bầu không khí căng thẳng hiệu quả như Tempest, Lost Memory… Ngoài ra, có một số bản nhạc nhàng như Elf Asks Uncle on a Date, Good Company hay Fune Love nghe khá thư giãn. Lồng tiếng cũng không có gì phải phàn nàn.</p><p><strong>Tổng kết</strong></p><p>Isekai Ojisan quả thật đã mang đến cho người xem một trải nghiệm rất mới mẻ trong thể loại isekai tưởng chừng như đã quá nhàm chán này. Một câu chuyện đơn giản nhưng hấp dẫn và không kém phần hài hước; một dàn nhân vật với những cá tính phong phú và thú vị chắc chắn sẽ đem đến cho bạn những tràng cười thả ga và những phút giây vô cùng thoải mái. Nếu có gì phàn nàn thì đó là phim bị delay nhiều lần khiến mạch trải nghiệm của mình bị gián đoạn. Cũng may là nó đã ra hết rồi.</p>', 1),
(2, '1714473361.jpg', 'Review Anime: Bocchi the Rock!', '2022-04-02', '<p>Khi bắt đầu mùa thu 2022, hầu như người ta chỉ để tâm tới những cái tên đình đám như Chainsaw Man, Bleach: Sennen Kessen-hen, Spy x Family Part 2 hay Blue Lock; còn Bocchi The Rock! chắc hẳn là cái tên lạ lẫm, chẳng mấy ai chú ý đến. Nhưng rồi khi fall 2022 khép lại, Bocchi The Rock! nghiễm nhiên lọt vào hàng ngũ&nbsp; những anime nổi tiếng và được yêu thích nhất mùa, thậm chí là cả trong năm 2022 vừa qua. Vậy, điều gì đã khiến tác phẩm này được chú ý nhiều đến thế?</p><p>Lưu ý: Bài viết có thể chứa yếu tố spoil, bạn hãy cân nhắc trước khi đọc.</p><p><strong>Thông tin sơ lược</strong></p><p>&nbsp;</p><ul><li>Tên: Bocchi the Rock!</li><li>Thể loại: Comedy, Âm nhạc, Cute Girls Doing Cute Things</li><li>Thời lượng: 12 tập</li><li>Năm phát hành: 2022</li><li>Studio: CloverWorks</li><li>Rating: 8.94 (MyAnimeList), 8.4 (IMDB), 8.53 (AniDb)</li></ul><p><strong>Nội dung</strong></p><p>Câu chuyện xoay quanh Hitori Gotou, một nữ sinh trung học bắt đầu học chơi guitar vì ước mơ được trở thành một thành viên trong ban nhạc, nhưng vì rất nhút nhát nên cô ấy chưa thể kết bạn được với ai. Tuy nhiên, ước mơ của cô đã có thể trở thành hiện thực sau khi cô gặp Nijika Ijichi, một cô gái chơi trống đang tìm kiếm một tay guitar mới cho ban nhạc Kessoku do Ikuyo Kita – giọng hát chính đã bỏ trốn trước buổi biểu diễn đầu tiên. Mặc dù buổi biểu diễn đầu tiên không được như ý muốn, nhưng các cô gái cảm thấy được tiếp thêm động lưc nhờ tình yêu dành cho âm nhạc và họ nhanh chóng mời Kita trở lại. Tìm thấy niềm vui khi biểu diễn, Bocchi và những người bạn đã cùng nhau cải thiện khả năng chơi nhạc của mình.</p><p><strong>Cảm nhận</strong></p><p>Bocchi the Rock! sở hữu một nội dung đơn giản, chỉ xoay quanh 4 cô bạn cùng ban nhạc với những hoạt động thường nhật của một ban nhạc như tìm kiếm thành viên, tập luyện, biểu diễn… Một cốt truyện nghe qua không có gì đặc biệt, nhưng anime biết cách biến những chất liệu bình thường ấy trở nên vô cùng thú vị. Đầu tiên, bộ phim căn nhịp độ rất chuẩn và được co giãn một cách hợp lý. Khi bình thường thì nhanh gọn, không câu kéo rườm rà, nhưng khi dâng trào cảm xúc thì chậm rãi để ta đắm chìm trong những dư vị của xúc cảm. Thứ hai, Bocchi the rock! làm rất tốt trong việc đan xen một cách hài hòa bầu không khí slice of life nhẹ nhàng với comedy hài hước và những phân cảnh “*&amp;^%$#@” của Bocchi. Bộ phim chuyển đổi bầu không khí từ nhẹ nhàng sang hài hước, hài hước về lại nhẹ nhàng và chèn các cảnh “@#$#%^&amp;*” một cách mượt mà, ít gượng ép. Bên cạnh đó, slice of life và comedy được cân bằng rất tốt để khiến phim không trở nên nhàm chán hay hài hước một cách quá lố so với bối cảnh.</p><p><img src=\"https://pic-bstarstatic.akamaized.net/ugc/54cbf27c89384701e0a1628b4038380a.jpeg\" alt=\"Bocchi When Group Photo [Bocchi The Rock Episode 4] - Bstation\" width=\"1280\" height=\"720\"></p><p>Bocchi the Rock! còn thú vị trong cách xây dựng các tình tiết một cách ngẫu hứng, bất chợt khiến cho diễn biến câu chuyện trở nên đầy bất ngờ và khó đoán. Không chỉ vậy, anime còn có cách gây hài rất đa dạng: tiếng cười đến từ cách xây dựng tình huống kiểu nghịch giữa thực tế và tưởng tượng: khi ta còn đang đắm chìm trong những suy tưởng đẹp đẽ và màu hồng biết bao của Bocchi thì ngay lập tức cái thực tại phũ phàng, tàn nhẫn kéo ta lại mặt đất và ngược lại; tiếng cười có thể đến từ những phân cảnh parody đủ thứ từ anime, manga, phim ảnh cho đến hội họa. Hoặc đơn giản, tiếng cười đến từ phần biểu cảm cực kỳ sinh động của Bocchi.</p><p>&nbsp;</p><p><strong>Nhân vật</strong></p><p>&nbsp;</p><p>Bocchi the Rock còn làm tốt trong phương diện xây dựng nhân vật. Họ không phải là những vai diễn với phần nội tâm đầy chiều sầu, thậm chí ngoài Bocchi ra các nhân vật còn lại hầu như còn không có độc thoại nội tâm. Song, thông qua bầu không khí Slice of life, bộ phim đã bộc lộ đầy đủ những nét cá tính, hoàn cảnh sống và cả mục tiêu của từng nhân vật. Từng tập phim đi qua, bức tranh về cuộc sống của mỗi người dần hoàn chỉnh. Đó là Nijika ước ao thành lập một ban nhạc bởi niềm cảm hứng đến từ người chị gái; là Ryou khát khao được chơi thứ âm nhạc thuần túy không theo thị hiếu hay Hitori (Bocchi-chan) mong mỏi được chơi nhạc cùng những người bạn.</p><p><img src=\"https://image.myanimelist.net/ui/5LYzTBVoS196gvYvw3zjwN7LV6Afp1YOaMTMTTpSjm8\" alt=\"Bocchi the Rock! Episode 2 Discussion (50 - ) - Forums - MyAnimeList.net\"></p><p>Bên cạnh đó, qua từng tập phim, anime luôn có những tình huống đẩy nhân vật vào những lựa chọn, thúc đẩy sự phát triển, trưởng thành của họ, mà rõ nét nhất ta có thể thấy ở Bocchi-chan. Nói ra thì có thể nhiều người cười mình, nghĩ mình là đứa dở hơi nhưng thật sự mình thấy khá giống Bocchi ở một số thứ (ờ thì cũng là đứa nhạt nhòa, tự ti, hướng nội, rụt rè, không giỏi giao tiếp. Tất nhiên là không nặng như Bocchi). Thông qua những tình huống đơn giản như bán đồ cho khách, bạn đến nhà chơi, đi chùa cùng bạn cho đến biểu diễn đường phố, diễn live trong trường… tất cả đều có những tác động không ít thì nhiều đến Bocchi, giúp cô bé dần có những sự cải thiện về nội tâm cũng như tình trạng bản thân.</p><p><strong>Hình ảnh</strong></p><p>&nbsp;</p><p>Bocchi the Rock còn ghi điểm với phần hình ảnh vô cùng chất lượng. Tông màu tươi sáng hợp với bối cảnh đời thường. Art style không quá đẹp, chỉ ở mức bình thường nhưng lại rất đa dạng: khi thì art nguệch ngoạc góc cạnh, khi lại được trau chuốt tỉ mỉ, lúc bình thường đơn giản, khi tròn trịa dễ thương… Biểu cảm nhân vật cực kỳ sinh động, đặc biệt là của Bocchi-chan thiên biến vạn hóa đã làm nên thương hiệu của tác phẩm, nhiều khi chỉ nhìn biểu cảm thôi cũng đủ khiến tớ cười bò. Dù chỉ là một anime slice of life – comedy thôi nhưng animation ăn đứt nhiều bộ hành động khác. Hoạt hoạ vô cùng mượt mà, ngay cả những phân cảnh đơn giản như lật quyển sách cũng thấy được sự đầu tư ở đó, còn những phân cảnh biểu diễn, gảy đàn hay đánh trống thì không cần phải nói, quá đỗi tuyệt vời. Mình còn ấn tượng với phần background của phim, quá đẹp, quá chi tiết và quá thật. Từ những thiết kế nhạc cụ như bass, guitar hay trống, những khung cảnh con đường, khu phố đêm khuya, thư viện chất đầy sách, cho đến những cành cây, ngọn cỏ đều được thiết kế vô cùng tỉ mỉ, có những cảnh cảm tưởng chụp cảnh thật đưa vào.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Âm nhạc</strong></p><p>Phần âm nhạc của Bocchi the Rock! cũng rất tuyệt. OP hay, giai điệu sôi động vui tươi; ed thì đầu tư hơn với 4 bài, bài nào cũng mang đến bầu không khí vui tươi căng tràn sức sống. Soundtrack khá nhiều với hơn 30 bản mang đến vô vàn giai điệu và được lồng ghép rất hiệu quả, làm bật lên được bầu không khí trong từng phân cảnh. Ta hòa vào không khí vui nhộn với Furafura hay Raise de ganbarimasu; đắm chìm vào những phút giây nhẹ nhàng với Nandaka totemo nemui nda; khi lại rạo rực, tràn đầy nhiệt huyết cùng Un bawwa!… Một số bản có lời khá thú vị có thể kể đến mấy bài “than đời” của Bocchi như Oshiire yori ai o komete; Kaze hike no uta hay Daburu kokurekishi botchi hikigatari version, Gitā wa tomodachi. Mà có mấy bản nhạc dịch tên từng bài ra đọc cũng khá là buồn cười. Lồng tiếng cũng là một điểm cộng khi bộc lộ được những cung bậc cảm xúc và làm nổi bật tính cách nhân vật. Từ chất giọng tự kỷ của Bocchi, trầm trầm của Ryou đến vui tươi của Nijika đều được thể rất tốt.</p><p><strong>Tổng kết</strong></p><p>Với tiền đề chỉ là một bộ truyện 4 – koma không mấy tên tuổi, Bocchi the Rock! thật sự đã khiến người ta không khỏi ngạc nhiên bởi sự thành công của mình. Một cốt truyện bình thường nhưng được trình bày khéo léo, một dàn nhân vật đơn giản nhưng được khai thác một cách hiệu quả cùng âm nhạc lồng ghép tuyệt vời và hình ảnh chất lượng, tất cả đã giúp Bocchi the Rock trở thành một trong những anime tạo được nhiều dấu ấn nhất trong năm 2022. Bộ phim sẽ mang đến cho bạn những phút giây nhẹ nhàng, thoải mái đan xen những bài học về cuộc sống, về sự trưởng thành và vượt qua chính mình.</p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(5) NOT NULL,
  `id_blog` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `date` datetime NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_anime`
--

CREATE TABLE `comment_anime` (
  `id` int(10) NOT NULL,
  `id_anime` int(5) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_blog`
--

CREATE TABLE `comment_blog` (
  `id` int(5) NOT NULL,
  `id_blog` int(5) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_blog`
--

INSERT INTO `comment_blog` (`id`, `id_blog`, `name`, `email`, `date`, `comment`) VALUES
(1, 1, 'Kwan', 'kwan@gmail.com', '2024-04-30 00:00:00', '+1 like'),
(2, 1, 'Hai', 'hai@gmail.com', '2024-04-30 11:12:00', 'ciao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `img_avatar` varchar(70) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `img_avatar`, `name`, `email`) VALUES
(3, '', 'Bocchi', 'bocchi@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `anime_comment`
--
ALTER TABLE `anime_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `anime_details`
--
ALTER TABLE `anime_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Chỉ mục cho bảng `anime_stat`
--
ALTER TABLE `anime_stat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_anime`
--
ALTER TABLE `comment_anime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Chỉ mục cho bảng `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `anime_comment`
--
ALTER TABLE `anime_comment`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `anime_details`
--
ALTER TABLE `anime_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `anime_stat`
--
ALTER TABLE `anime_stat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment_anime`
--
ALTER TABLE `comment_anime`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment_blog`
--
ALTER TABLE `comment_blog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anime_comment`
--
ALTER TABLE `anime_comment`
  ADD CONSTRAINT `anime_comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `anime_details`
--
ALTER TABLE `anime_details`
  ADD CONSTRAINT `anime_details_ibfk_1` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`);

--
-- Các ràng buộc cho bảng `comment_anime`
--
ALTER TABLE `comment_anime`
  ADD CONSTRAINT `comment_anime_ibfk_1` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`);

--
-- Các ràng buộc cho bảng `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD CONSTRAINT `comment_blog_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
