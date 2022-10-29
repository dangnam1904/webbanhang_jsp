-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2018 lúc 06:59 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang_javaweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_taikhoan` int(10) UNSIGNED NOT NULL,
  `ngaydang` timestamp NULL DEFAULT NULL,
  `ngaysua` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `mota`, `noidung`, `hinhanh`, `id_taikhoan`, `ngaydang`, `ngaysua`) VALUES
(1, 'Minerva Grimes PhD Anh kaleal', 'Placeat a quod perspiciatis et aut vel id.', '<div id=\"contentPanel_rp_post_uc_ad_0_ad_box_detail_content_0\" class=\"widget widget_alx_tabs ad_box_detail_content\">\r\n<div style=\"height: 0px; width: 0px; overflow: hidden;\">&nbsp;</div>\r\n<div id=\"_admDivFlashdt\" style=\"visibility: hidden; height: 1px; width: 1px; position: absolute; bottom: 0px; overflow: hidden; left: 100px;\">&nbsp;</div>\r\n<div id=\"ads_zone37276\">\r\n<div id=\"ads_zone37276_slot1\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"abdf\">\r\n<p style=\"text-align: justify;\"><u><strong><a title=\"C&aacute;ch l&agrave;m m&oacute;n thịt\" href=\"http://blognauanngon.com/the/cach-lam-mon-thit\">C&aacute;ch l&agrave;m m&oacute;n thịt</a> heo quay x&agrave;o <a title=\"dưa cải\" href=\"http://blognauanngon.com/the/dua-cai\">dưa cải</a> chua ngon ngất ng&acirc;y:</strong></u></p>\r\n<p style=\"text-align: justify;\">Trời lạnh lạnh lại k&egrave;m theo ch&uacute;t mưa ph&ugrave;n khiến m&igrave;nh lười đi chợ gh&ecirc;, may qu&aacute; l&agrave; trong tủ lạnh c&ograve;n ch&uacute;t <a title=\"thịt heo\" href=\"http://blognauanngon.com/the/thit-heo\">thịt heo</a> quay từ tối h&ocirc;m trước vẫn c&ograve;n v&agrave; c&ograve;n vại dưa cải chua m&igrave;nh tự muối v&agrave;ng ruộm thơm phức, chỉ vậy thui l&agrave; đ&atilde; đủ nguy&ecirc;n liệu để ch&uacute;ng m&igrave;nh c&oacute; thể chế biến m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y cho bữa cơm gia đ&igrave;nh r&ugrave;i đấy <img style=\"height: 23px; width: 23px;\" title=\"laugh\" src=\"http://blognauanngon.com/themes/extends/ckeditor/plugins/smiley/images/teeth_smile.png\" alt=\"Ảnh minh họa 1 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" />. Thịt heo quay với lớp da gi&ograve;n dai, thịt nạc thơm, b&eacute;o&nbsp;ngậy kết hợp với vị chua chua, gi&ograve;n gi&ograve;n&nbsp;của&nbsp;dưa cải muối&nbsp;khiến m&oacute;n ăn trở n&ecirc;n v&ocirc; c&ugrave;ng hấp dẫn, ăn m&atilde;i m&agrave; kh&ocirc;ng hề thấy ng&aacute;n ch&uacute;t n&agrave;o, m&oacute;n n&agrave;y m&agrave; ăn c&ugrave;ng với cơm trắng th&igrave; đ&uacute;ng l&agrave; \"tuyệt c&uacute; m&egrave;o\" lu&ocirc;n, bao nhi&ecirc;u cơm cũng hết &yacute;. M&agrave; tuyệt hơn nữa l&agrave; c&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua n&agrave;y v&ocirc; c&ugrave;ng đơn giản, cực th&iacute;ch hợp cho những ng&agrave;y ch&uacute;ng m&igrave;nh \"bỗng dưng\" lại lười, hoặc những khi bận rộn kh&ocirc;ng c&oacute; qu&aacute; nhiều thời gian để nấu nướng. H&atilde;y c&ugrave;ng v&agrave;o bếp v&agrave; l&agrave;m ngay m&oacute;n thịt heo x&agrave;o cải chua ngon ngất ng&acirc;y n&agrave;y c&ugrave;ng m&igrave;nh nh&eacute;.</p>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/450x268/anh-blognauanngon.com-tjtigs678898750.jpg?1543291181038\" alt=\"Ảnh minh họa 2 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Chuẩn bị nguy&ecirc;n liệu:</strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Thịt heo quay: 400 g</li>\r\n<li style=\"text-align: justify;\">Dưa cải chua: 200 g (c&aacute;c bạn tham khảo th&ecirc;m <a title=\"c&aacute;ch muối dưa\" href=\"http://blognauanngon.com/the/cach-muoi-dua\">c&aacute;ch muối dưa</a> cải chua <a title=\"C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" href=\"http://blognauanngon.com/am-thuc/cach-lam-mon-ngon-khac/cach-muoi-dua-cai-chua-gion-chuan-khong-can-chinh-636407537989417879.html\">tại đ&acirc;y</a>)</li>\r\n<li style=\"text-align: justify;\">Ớt quả: 1 - 2 quả</li>\r\n<li style=\"text-align: justify;\">H&agrave;nh kh&ocirc;: 1 <a title=\"củ\" href=\"http://blognauanngon.com/the/cu\">củ</a></li>\r\n<li style=\"text-align: justify;\"><a title=\"H&agrave;nh l&aacute;\" href=\"http://blognauanngon.com/the/hanh-la\">H&agrave;nh l&aacute;</a>: v&agrave;i cọng</li>\r\n<li style=\"text-align: justify;\"><a title=\"Dầu ăn\" href=\"http://blognauanngon.com/the/dau-an\">Dầu ăn</a>, Nước mắm, đường, hạt n&ecirc;m...</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><strong>Bước 1: </strong>Thịt heo quay c&aacute;c bạn c&oacute; thể tự mua thịt về quay như vậy th&igrave; sẽ đảm bảo vệ sinh v&agrave; chất lượng hơn&nbsp;nhưng để tiết kiệm thời gian v&agrave; nhanh ch&oacute;ng hơn th&igrave; ch&uacute;ng m&igrave;nh c&oacute; thể mua thịt heo quay sẵn nh&eacute;, nhớ mua ở những cửa h&agrave;ng quen hoặc uy t&iacute;n cho an t&acirc;m nh&eacute;. Thịt heo quay c&aacute;c bạn th&aacute;i th&agrave;nh những l&aacute;t mỏng vừa ăn (như h&igrave;nh) rồi để ra đĩa ri&ecirc;ng.</li>\r\n</ul>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/400x274/anh-blognauanngon.com-eftpwp063742500.jpg?1543291014689\" alt=\"Ảnh minh họa 3 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n<p style=\"text-align: justify;\">Tiếp theo c&aacute;c bạn sơ chế c&aacute;c nguy&ecirc;n liệu c&ograve;n lại, v&igrave; m&oacute;n thịt heo quay x&agrave;o dưa cải chua kh&ocirc;ng cần sử dụng qu&aacute; nhiều nguy&ecirc;n liệu n&ecirc;n c&ocirc;ng đoạn n&agrave;y kh&aacute; đơn giản v&agrave; nhanh ch&oacute;ng: Ớtt rửa sạch, bỏ bớt hạt, th&aacute;i l&aacute;t x&eacute;o; H&agrave;nh l&aacute; rửa sạch, bỏ rễ, thải nhỏ; H&agrave;nh kh&ocirc; b&oacute;c vỏ, th&aacute;i l&aacute;t mỏng; Dưa cải chua c&aacute;c bạn đem đi rửa&nbsp;lại với nước&nbsp;cho sạch v&agrave; bớt vị mặn, vắt nhẹ cho dưa bớt nước rồi để ra rổ cho r&aacute;o.</p>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/400x288/anh-blognauanngon.com-fzooco253273750.jpg?1543291031804\" alt=\"Ảnh minh họa 4 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><strong>Bước 2:</strong> Đặt nồi l&ecirc;n bếp, cho 1 th&igrave;a canh dầu ăn v&agrave;o nồi, đun dầu n&oacute;ng rồi cho h&agrave;nh kh&ocirc; v&agrave;o phi thơm, khi thấy dậy m&ugrave;i c&aacute;c bạn đổ thịt heo quay v&agrave;o nồi, x&agrave;o v&agrave; đảo đều&nbsp;với lừa vừa&nbsp; trong khoảng 5 ph&uacute;t.</li>\r\n</ul>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/400x266/anh-blognauanngon.com-dysqtb411242500.jpg?1543291049040\" alt=\"Ảnh minh họa 5 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><strong>Bước 3: </strong>Tiếp theo&nbsp;c&aacute;c bạn tr&uacute;t tất cả dưa cải chua v&agrave;o nồi, đảo đều để dưa v&agrave; thịt được trộn lẫn với nhau, sau đ&oacute; c&aacute;c bạn chế th&ecirc;m ch&uacute;t nước s&ocirc;i v&agrave;o nồi, sao cho nước x&acirc;m xấp mặt thịt l&agrave; được. C&aacute;c bạn chỉnh lửa l&ecirc;n mức to, đến khi thấy nước trong nồi s&ocirc;i l&ecirc;n th&igrave; n&ecirc;m 2 th&igrave;a c&agrave; ph&ecirc; đường + 1 th&igrave;a c&agrave; ph&ecirc; nước mắm + 1 th&igrave;a c&agrave; ph&ecirc; bột n&ecirc;m, đảo v&agrave;i lần cho gia vị tan. C&aacute;c bạn lưu &yacute; v&igrave; dưa cải chua v&agrave; thịt heo quay đều đ&atilde; c&oacute; vị mặn r&ugrave;i n&ecirc;n khi n&ecirc;m nếm ch&uacute;ng m&igrave;nh kh&ocirc;ng n&ecirc;n cho qu&aacute; nhiều mắm v&agrave; bột n&ecirc;m k&eacute;o l&agrave;m m&oacute;n ăn bị mặn nh&eacute;. Giảm lửa về mức nhỏ vừa, đun đến khi thịt heo quay mềm thơm, h&ograve;a quyện với vị chua chua của dưa cải muối, nước trong nồi chỉ c&ograve;n sền sệt th&igrave; c&aacute;c bạn n&ecirc;m nếm lại lần nữa cho thật vừa miệng, rắc ch&uacute;t ớt th&aacute;i l&aacute;t v&agrave;&nbsp;h&agrave;nh l&aacute; l&ecirc;n tr&ecirc;n (nếu th&iacute;ch), đảo v&agrave;i lần&nbsp;rồi tắt bếp, tr&uacute;t m&oacute;n ăn ra đĩa rồi d&ugrave;ng khi c&ograve;n n&oacute;ng nh&eacute;.</li>\r\n</ul>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/400x266/anh-blognauanngon.com-nqaekk635461250.jpg?1543291070859\" alt=\"Ảnh minh họa 6 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n<p style=\"text-align: justify;\">M&oacute;n thịt heo quay x&agrave;o dưa cải chua với vị thịt đậm đ&agrave;, mềm ngậy&nbsp;kết hợp với vị chua chua, gi&ograve;n gi&ograve;n v&ocirc; c&ugrave;ng chống ng&aacute;n của dưa cải chua khiến m&oacute;n ăn tuy v&ocirc; c&ugrave;ng đơn giản nhưng lại cực hấp dẫn, nhất l&agrave; khi ăn c&ugrave;ng với cơm trắng n&oacute;ng hổi th&igrave; đ&uacute;ng l&agrave; bao nhi&ecirc;u cơm cũng hết <img style=\"height: 23px; width: 23px;\" title=\"heart\" src=\"http://blognauanngon.com/themes/extends/ckeditor/plugins/smiley/images/heart.png\" alt=\"Ảnh minh họa 7 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" />. Chỉ với những nguy&ecirc;n liệu c&ugrave;ng c&aacute;ch l&agrave;m đơn giản v&agrave; nhanh ch&oacute;ng l&agrave; chị em ch&uacute;ng m&igrave;nh đ&atilde; ho&agrave;n th&agrave;nh xong m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y cho cả nh&agrave; c&ugrave;ng thưởng thức r&ugrave;i, m&oacute;n ăn quen thuộc nhưng chắc chắn l&agrave; mọi người trong gia đ&igrave;nh vẫn v&ocirc; c&ugrave;ng iu th&iacute;ch v&agrave; hưởng ứng nhiệt t&igrave;nh đấy.</p>\r\n<p style=\"text-align: center;\"><img id=\"image_preview\" src=\"http://blognauanngon.com/images/450x268/anh-blognauanngon.com-tjtigs678898750.jpg?1543291181038\" alt=\"Ảnh minh họa 8 - C&aacute;ch l&agrave;m m&oacute;n thịt heo quay x&agrave;o dưa cải chua ngon ngất ng&acirc;y!\" /></p>\r\n</div>', 'hinhanh0.png', 4, '2018-11-13 17:00:00', NULL),
(2, 'Shaina Fisher', 'Quia et nisi officia quo.', '<h2 id=\"cach-lam-chan-gio-ham-mang-kho-1\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 22px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng kh&ocirc;</h2>\r\n<h3 id=\"nguyen-lieu-nau-chan-gio-ham-mang-kho-2\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Nguy&ecirc;n liệu nấu ch&acirc;n gi&ograve; hầm măng kh&ocirc;</h3>\r\n<ul style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"margin-bottom: 2px;\">Ch&acirc;n gi&ograve;: 1kg</li>\r\n<li style=\"margin-bottom: 2px;\">Măng kh&ocirc;: 50g</li>\r\n<li style=\"margin-bottom: 2px;\">H&agrave;nh l&aacute;</li>\r\n<li style=\"margin-bottom: 2px;\">H&agrave;nh kh&ocirc;</li>\r\n<li style=\"margin-bottom: 2px;\">Gia vị: Nước mắm, hạt ti&ecirc;u, hạt n&ecirc;m, m&igrave; ch&iacute;nh, dầu ăn&hellip;</li>\r\n</ul>\r\n<div id=\"attachment_10365\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"size-medium wp-image-10365\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-1-600x393.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-1-600x393.jpg 600w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-1-90x60.jpg 90w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-1.jpg 700w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"393\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng kh&ocirc;</p>\r\n</div>\r\n<h3 id=\"cach-lam-chan-gio-ham-mang-kho-3\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng kh&ocirc;</h3>\r\n<h4 id=\"buoc-1-so-che-nguyen-lieu-4\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bước 1: Sơ chế nguy&ecirc;n liệu</h4>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Ch&acirc;n gi&ograve; l&agrave;m sạch chặt miếng vừa ăn, sau đ&oacute; ướp với nước mắm, m&igrave; ch&iacute;nh.&nbsp;<strong style=\"font-weight: bold;\">C&aacute;ch l&agrave;m gi&ograve; heo kho măng kh&ocirc;</strong>&nbsp;ngon l&agrave; ch&acirc;n gi&ograve; n&ecirc;n ướp trong khoảng 20 &ndash; 30 ph&uacute;t cho ngấm gia vị.</p>\r\n<div id=\"attachment_10358\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"size-medium wp-image-10358\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18-600x404.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18-600x404.jpg 600w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18-90x60.jpg 90w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18-180x120.jpg 180w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18-95x64.jpg 95w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang18.jpg 699w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"404\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">Ch&acirc;n gi&ograve; chặt miếng vừa ăn rồi ướp gia vị</p>\r\n</div>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Măng kh&ocirc; ng&acirc;m với nước gạo hoặc nước ấm khoảng 3 &ndash; 4 tiếng. Rửa sạch rồi cho v&agrave;o nồi luộc.</p>\r\n<div id=\"attachment_10359\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"wp-image-10359\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang1.jpg 550w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang1-90x60.jpg 90w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang1-180x120.jpg 180w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang1-95x64.jpg 95w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"399\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">Măng kh&ocirc; ng&acirc;m 4 &ndash; 5 tiếng</p>\r\n</div>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">H&agrave;nh kh&ocirc; băm nhỏ, h&agrave;nh l&aacute; rửa sạch, th&aacute;i nhỏ, gốc chẻ th&agrave;nh sợi d&agrave;i.</p>\r\n<div id=\"attachment_10360\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"size-medium wp-image-10360\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang19-600x450.png\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang19-600x450.png 600w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang19-768x576.png 768w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang19.png 800w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang19-45x35.png 45w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"450\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">H&agrave;nh kh&ocirc; th&aacute;i nhỏ</p>\r\n</div>\r\n<h4 id=\"buoc-2-luoc-mang-5\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bước 2: Luộc măng</h4>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng kh&ocirc;</strong>&nbsp;ngon, kh&ocirc;ng bị đắng đ&oacute; l&agrave; trước khi nấu bạn luộc măng v&agrave; thay nước trong l&uacute;c luộc khoảng 2-3 lần, cứ thay nước đến khi n&agrave;o nước luộc măng trong l&agrave; được.</p>\r\n<div id=\"attachment_10362\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"size-medium wp-image-10362\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4-600x420.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4-600x420.jpg 600w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4-120x85.jpg 120w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4-768x538.jpg 768w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4-800x560.jpg 800w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang4.jpg 1000w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"420\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">Luộc măng</p>\r\n</div>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Sau đ&oacute; bạn vớt ra ngo&agrave;i rổ để r&aacute;o nước, th&aacute;i th&agrave;nh miếng to rồi rửa lại với nước lạnh.</p>\r\n<h4 id=\"buoc-3-xao-qua-thit-chan-gio-voi-mang-6\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bước 3: X&agrave;o qua thịt ch&acirc;n gi&ograve; với măng</h4>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bắc chảo l&ecirc;n bếp cho n&oacute;ng, đổ dầu ăn v&agrave; h&agrave;nh kh&ocirc; v&agrave;o phi thơm, cho ch&acirc;n gi&ograve; đ&atilde; ướp v&agrave;o x&agrave;o qua đến khi thịt săn lại th&igrave; cho măng v&agrave;o x&agrave;o c&ugrave;ng. N&ecirc;m nếm nước mắm, m&igrave; ch&iacute;nh v&agrave;o đảo đều.</p>\r\n<div id=\"attachment_10363\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"wp-image-10363\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5.jpg 550w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-90x60.jpg 90w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-180x120.jpg 180w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang5-95x64.jpg 95w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"399\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">X&agrave;o măng với ch&acirc;n gi&ograve;</p>\r\n</div>\r\n<h4 id=\"buoc-4-ninh-chan-gio-mang-kho-7\" style=\"margin-bottom: 10px; line-height: 1.3em; font-weight: bold; margin-top: 0px; color: #40454d; font-family: \'Open Sans\', sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bước 4: Ninh ch&acirc;n gi&ograve; măng kh&ocirc;</h4>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Sau khi x&agrave;o qua cho nước v&agrave;o ninh ch&acirc;n gi&ograve; măng kh&ocirc; ở lửa nhỏ để ch&acirc;n gi&ograve; ch&iacute;n nhừ. D&ugrave;ng mu&ocirc;i vớt bọt để canh măng gi&ograve; được trong. Ninh tầm 40 ph&uacute;t cho ch&acirc;n gi&ograve; ch&iacute;n nhừ th&igrave; n&ecirc;m nếm lại một lần nữa rổi cho h&agrave;nh l&aacute; cắt kh&uacute;c v&agrave;o v&agrave; tắt bếp.</p>\r\n<div id=\"attachment_10364\" class=\"wp-caption aligncenter\" style=\"margin: auto auto 20px; float: none; background-color: #f8f8f8; outline: #eaeaea solid 1px; border: 0px; padding: 5px 5px 10px; text-align: center; max-width: 100%; box-sizing: border-box; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 610px;\"><img class=\"size-medium wp-image-10364\" style=\"border: 0px; vertical-align: middle; height: auto; max-width: 100%; margin-bottom: 20px;\" src=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1-600x428.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1-600x428.jpg 600w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1-120x85.jpg 120w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1-768x548.jpg 768w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1-800x571.jpg 800w, https://agiadinh.net/wp-content/uploads/2018/11/cach-lam-chan-gio-ham-mang2-1.jpg 1000w\" alt=\"C&aacute;ch l&agrave;m ch&acirc;n gi&ograve; hầm măng \" width=\"600\" height=\"428\" />\r\n<p class=\"wp-caption-text\" style=\"margin-bottom: 5px; margin-top: 0px; font-size: 15px; color: #000000; font-family: Play, sans-serif; -webkit-font-smoothing: antialiased;\">Ninh ch&acirc;n gi&ograve; với măng kho</p>\r\n</div>\r\n<p style=\"margin-bottom: 20px; margin-top: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Vậy l&agrave; ch&uacute;ng ta đ&atilde; h&ograve;a th&agrave;nh&nbsp;<strong style=\"font-weight: bold;\">c&aacute;ch l&agrave;m gi&ograve; heo kho măng kh&ocirc;</strong>&nbsp;thơm ngon đ&uacute;ng điệu rồi.</p>', 'hinhanh1.png', 5, '2018-11-11 17:00:00', NULL),
(3, 'Prof. Roosevelt Prohaska Jr.', 'Et deleniti et est veniam recusandae nihil molestias.', 'Quis aliquid iste atque doloribus laudantium et distinctio. Qui autem aut odio inventore rem sed. Fuga vel sit veritatis sequi. Nostrum minima non dolores.', 'hinhanh2.png', 4, '2018-11-17 17:00:00', NULL),
(4, 'Brennan Shields', 'Aliquam rerum quo aut.', 'Quia temporibus quia corrupti eaque amet sed aspernatur. Ipsa adipisci quasi ut aut ut. Ipsam aliquid enim accusamus numquam quod.', 'hinhanh3.png', 2, '2018-11-11 17:00:00', NULL),
(5, 'Della Kohler', 'Laboriosam eos itaque sunt.', 'Veritatis ut temporibus nostrum debitis iure nobis autem est. Architecto quibusdam porro veritatis sit quos cupiditate praesentium. Deleniti consequatur qui alias incidunt.', 'hinhanh4.png', 4, '2018-11-19 17:00:00', NULL),
(6, 'Mr. Barton Bauch', 'Laborum veniam maiores a.', 'Provident quae qui blanditiis eveniet. Dolor omnis aspernatur quibusdam. Aspernatur explicabo commodi porro nihil.', 'hinhanh5.png', 2, '2018-11-03 17:00:00', NULL),
(7, 'Keagan Shields', 'Magnam voluptatem sed sit amet velit dolorem.', 'Tempora sit qui velit quod neque. Excepturi non fuga accusamus recusandae eligendi impedit illum. Quo et non distinctio tempore laudantium sequi.', 'hinhanh6.png', 2, '2018-11-01 17:00:00', NULL),
(8, 'Lonzo Robel', 'Est deleniti consequatur molestias rem reprehenderit.', 'Nostrum nam sit placeat commodi eum reiciendis at voluptates. Sit amet sit debitis et consequatur sunt harum. Et ut amet corrupti laborum inventore.', 'hinhanh7.png', 3, '2018-11-15 17:00:00', NULL),
(9, 'Ewald Hickle', 'Corporis perspiciatis sint deleniti explicabo.', 'Et enim consequatur voluptatem architecto doloremque natus. Dolorum error id qui quas quas. Excepturi quisquam rerum eos ratione.', 'hinhanh8.png', 3, '2018-11-06 17:00:00', NULL),
(10, 'Ernestine Blick', 'Beatae voluptates dolorem beatae perferendis nihil.', '<p>Soluta sit aut aspernatur earum voluptatem. Iusto ea nesciunt laudantium dolorem omnis accusamus harum odio.</p>', 'hinhanh9.png', 3, '2018-11-19 17:00:00', NULL),
(11, 'Cielo Effertz DVM', 'A dicta vel et suscipit aut consequatur perferendis ut.', 'Corrupti aspernatur minima voluptates a qui. Consequatur id alias eos voluptate.', 'hinhanh10.png', 3, '2018-11-03 17:00:00', NULL),
(12, 'Vivienne Greenholt', 'Sequi soluta doloremque et dolores praesentium cumque.', 'In ea aut dignissimos cumque quia et neque. Et quo inventore dolor eaque. Quas et fuga culpa qui. Est maxime animi quae tenetur et sit nam.', 'hinhanh11.png', 5, '2018-11-02 17:00:00', NULL),
(13, 'Dr. Domingo Emard II', 'Sit expedita expedita similique eum aperiam praesentium est similique.', 'Quia facilis sit est corrupti. Assumenda unde est soluta ut illum tenetur quae rerum. Ut qui exercitationem blanditiis aut aut aut.', 'hinhanh12.png', 4, '2018-11-03 17:00:00', NULL),
(14, 'Magdalena Hansen', 'Animi quidem repellat doloremque numquam provident iure perferendis.', 'Harum autem et quidem rerum aut molestias. Est quas et non dolores. Fuga in est vel eligendi ut nobis omnis.', 'hinhanh13.png', 2, '2018-11-02 17:00:00', NULL),
(15, 'Lizzie Christiansen', 'Voluptas quia sed rerum a laudantium molestiae.', 'Deleniti quia voluptatem minus doloremque veritatis et in. Sit neque suscipit eveniet quia. Corrupti consectetur id consequatur officiis et.', 'hinhanh14.png', 2, '2018-11-11 17:00:00', NULL),
(16, 'Dr. Stewart Abernathy', 'Aperiam modi quasi quisquam quos voluptatum sit alias.', 'Et culpa eos cum voluptatem accusamus omnis. Molestiae aliquid rerum eius deserunt iste quaerat sequi. Eos in et et maxime.', 'hinhanh15.png', 1, '2018-11-13 17:00:00', NULL),
(17, 'Dr. Dayton Hoeger Jr.', 'Est nulla ad voluptatum ullam vel dolorum at voluptatem.', 'Minima nemo quia ex ab minima ut. Optio rerum ut ab alias commodi quidem. Est adipisci placeat dolor omnis minima quibusdam voluptas sit.', 'hinhanh16.png', 5, '2018-11-02 17:00:00', NULL),
(18, 'Miss Bella Considine Sr.', 'Expedita voluptatem voluptatem ad enim.', 'Aut sed fuga et magnam dicta voluptatem a laborum. Porro eligendi dicta nisi eos ea. Esse iure aut a voluptatem reprehenderit voluptatum.', 'hinhanh17.png', 2, '2018-11-03 17:00:00', NULL),
(19, 'Flo Lesch', 'Quo eos eum omnis unde in magnam nemo.', 'Itaque asperiores autem illo qui et nobis. Ducimus harum temporibus officiis cum nobis quo. Qui quidem beatae et ea harum. Ipsum recusandae consectetur labore rerum.', 'hinhanh18.png', 3, '2018-09-10 17:00:00', NULL),
(20, 'Parker Dach', 'Porro est et in illo quisquam consequatur.', 'Facilis similique ea sequi perferendis. Ea quia beatae autem beatae et. Necessitatibus aut dolor tenetur illo qui modi et.', 'hinhanh19.png', 2, '2018-10-14 17:00:00', NULL),
(21, 'Bánh ngọt', '', '<section class=\"entry-content cf\">\r\n<p>B&aacute;nh ngọt l&agrave; một trong những m&oacute;n ăn được rất nhiều người y&ecirc;u th&iacute;ch. Một chiếc b&aacute;nh ngọt ngon kết hợp với ly c&agrave; ph&ecirc; n&oacute;ng sẽ mang lại sự thoải m&aacute;i, giảm streess. Thưởng thức&nbsp; một chiếc b&aacute;nh ngọt được v&iacute; như tận hưởng một th&uacute; vui bởi nu&ocirc;ng chiều vị gi&aacute;c cũng l&agrave;m thỏa m&atilde;n bản th&acirc;n sau những giờ l&agrave;m việc, học tập căng thẳng. C&oacute; thể n&oacute;i b&aacute;nh ngọt l&agrave; m&oacute;n ăn của tinh thần.</p>\r\n<h4><a href=\"https://www.vietnammm.com/vi/cheesecake-ngon\">Cheese Cake Ngon</a> &ndash; B&aacute;nh ph&ocirc; mai của người Saigon</h4>\r\n<p>B&aacute;nh ph&ocirc; mai c&oacute; nguồn gốc từ Hy Lạp l&agrave; m&oacute;n b&aacute;nh đặc biệt với c&ocirc;ng thức đơn giản: bột, mật ong v&agrave; ph&ocirc; mai, thường xuất hiện trong c&aacute;c bữa tiệc. Ng&agrave;y nay, cheesecake trở th&agrave;nh m&oacute;n b&aacute;nh tr&aacute;ng miệng được y&ecirc;u th&iacute;ch, xuất hiện hầu hết trong c&aacute;c tiệm c&agrave; ph&ecirc; &ndash; kem, hay những nh&agrave; h&agrave;ng lớn, hoặc c&aacute;c tiệm b&aacute;nh nổi tiếng.</p>\r\n<p>Tại S&agrave;i G&ograve;n, <a href=\"https://www.vietnammm.com/vi/cheesecake-ngon\">Cheesse Cake Ngon </a>l&agrave; địa điểm rất quen thuộc với thực kh&aacute;ch y&ecirc;u th&iacute;ch m&oacute;n b&aacute;nh ph&ocirc; mai. Cheesse Cake Ngon với danh s&aacute;ch rất nhiều c&aacute;c loại b&aacute;nh ph&ocirc; mai kh&aacute;c nhau , b&aacute;nh sẽ được l&agrave;m ngay trong ng&agrave;y v&agrave; giao tận nơi theo y&ecirc;u cầu. B&aacute;nh Ph&ocirc; mai hương vị cổ điển l&agrave; m&oacute;n được y&ecirc;u th&iacute;ch nhất bạn c&oacute; thể lựa chọn vị s&ocirc; c&ocirc; la&nbsp; hoặc tr&agrave; xanh. Hoặc nếu muốn bạn c&oacute; thể chọn &nbsp;b&aacute;nh ph&ocirc; mai với 06 vị kh&aacute;c nhau đảm bảo h&agrave;i l&ograve;ng tất cả mọi người.</p>\r\n<div id=\"attachment_47072\" class=\"wp-caption aligncenter\" style=\"width: 535px;\"><a href=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-4.png\"><img class=\"size-full wp-image-47072\" src=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-4.png\" sizes=\"(max-width: 525px) 100vw, 525px\" srcset=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-4.png 525w, https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-4-200x300.png 200w\" alt=\"Cheese Cake Ngon &ndash; B&aacute;nh ph&ocirc; mai của người S&agrave;i G&ograve;n\" width=\"525\" height=\"788\" /></a>\r\n<p class=\"wp-caption-text\">Red Velvet ki&ecirc;u kỳ ai cũng n&ecirc;n thử (Nguồn: pinterest.com)</p>\r\n</div>\r\n<p>Ngo&agrave;i <a href=\"https://www.vietnammm.com/vi/cheesecake-ngon\">Cheese Cake</a> cổ điển, Red Velvet&nbsp; l&agrave; một m&oacute;n b&aacute;nh rất được ưa chuộng tại S&agrave;i G&ograve;n, b&aacute;nh c&oacute; nguồn gốc ở khu vực Bắc Mỹ. Đ&uacute;ng như t&ecirc;n gọi của n&oacute;, loại b&aacute;nh n&agrave;y c&oacute; m&agrave;u đỏ tựa như nhung kh&ocirc;ng thể lẫn v&agrave;o đ&acirc;u được. Sắc độ của n&oacute; c&oacute; thể thay đổi chạy d&agrave;i từ đỏ tươi, đỏ s&aacute;ng đến đỏ sậm. Red Velvet&nbsp; đ&atilde; chinh phục tất cả tr&aacute;i tim của t&iacute;n đồ y&ecirc;u th&iacute;ch m&oacute;n ngọt tr&ecirc;n to&agrave;n thế giới v&agrave; &nbsp;t&iacute;n đồ m&oacute;n ngọt tại S&agrave;i G&ograve;n kh&ocirc;ng chỉ bởi hương vị m&agrave; c&ograve;n do ngoại h&igrave;nh. Red Velvet&nbsp; xứng đ&aacute;ng l&agrave; chiếc b&aacute;nh ngọt ki&ecirc;u k&igrave; nhất m&agrave; ai cũng n&ecirc;n thử</p>\r\n<p>V&ocirc; c&ugrave;ng tiện lợi, chỉ cần <a href=\"https://www.vietnammm.com/vi\">đặt m&oacute;n trực tuyến </a>v&agrave; những chiếc b&aacute;nh thơm ngọt tuyệt vời sẽ được <a href=\"https://www.vietnammm.com/vi\">giao tận nơi</a>.</p>\r\n<h4><a href=\"https://www.vietnammm.com/vi/harvest-baking\">Harvest Baking</a>: Thực phẩm L&agrave;nh mạnh cho Cuộc sống Khỏe</h4>\r\n<p><a href=\"https://www.vietnammm.com/vi/harvest-baking\">Harvest Baking</a> l&agrave; một tiệm b&aacute;nh đặc biệt chuy&ecirc;n cung cấp những chiếc b&aacute;nh tươi, mới ra l&ograve;, cao cấp với hương vị v&agrave; chất lượng kh&aacute; tốt tại S&agrave;i G&ograve;n. Chuy&ecirc;n cung cấp thực phẩm c&oacute; lợi cho sức khỏe: kh&aacute;ch h&agrave;ng ăn chay v&agrave; kh&ocirc;ng dung nạp gluten,b&ecirc;n cạnh đ&oacute; sản phẩm y&ecirc;u th&iacute;ch truyền thống như b&aacute;nh s&ocirc; c&ocirc; la đen, b&aacute;nh quy, b&aacute;nh nướng pie, b&aacute;nh tạc, b&aacute;nh ngọt. B&iacute; quyết để l&agrave;m ra chiếc b&aacute;nh mỳ tuyệt hảo l&agrave; những người thợ đam m&ecirc; với nghề. Sự chăm ch&uacute;t v&agrave; quan t&acirc;m d&agrave;nh cho những ổ b&aacute;nh mỳ ho&agrave;n hảo đ&atilde; mang đến sự nổi tiếng cho <a href=\"https://www.vietnammm.com/vi/harvest-baking\">Harvest Baking</a>. Hơn cả một tiệm b&aacute;nh &ndash; Harvest Baking <a href=\"https://www.vietnammm.com/vi\">phục vụ tận nơi</a> những sản phẩm b&aacute;nh c&oacute; thể d&ugrave;ng hằng ng&agrave;y như một thực phẩm sạch cho những người th&acirc;n y&ecirc;u nhất. Nếu bạn qu&aacute; bận, bạn thể chủ động <a href=\"https://www.vietnammm.com/vi\">đặt b&aacute;nh trực tuyến</a> cho cả tuần, v&agrave; chỉ cần tận hưởng những chiếc b&aacute;nh thơm ngon mỗi buổi s&aacute;ng.</p>\r\n<div id=\"attachment_47074\" class=\"wp-caption aligncenter\" style=\"width: 574px;\"><a href=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-1.png\"><img class=\"size-full wp-image-47074\" src=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-1.png\" sizes=\"(max-width: 564px) 100vw, 564px\" srcset=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-1.png 564w, https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-1-205x300.png 205w\" alt=\"Harvest Baking : Thực phẩm L&agrave;nh mạnh cho Cuộc sống Khỏe\" width=\"564\" height=\"824\" /></a>\r\n<p class=\"wp-caption-text\">Nguồn: pinterest.com</p>\r\n</div>\r\n<p>Đặt b&aacute;nh chưa bao giờ tiện lợi hơn khi to&agrave;n bộ thực đơn với chi tiết về m&ocirc; tả từng m&oacute;n b&aacute;nh. Bạn chỉ việc lựa chọn niềm vui, y&ecirc;u th&iacute;ch của khẩu vị. <a href=\"https://www.vietnammm.com/vi/harvest-baking\">Harvest Baking</a> cung cấp b&aacute;nh tươi giao đến tận nh&agrave; bạn.</p>\r\n<h4><a href=\"https://www.vietnammm.com/vi/baskin-robbins-quan-2\">Baskin Robbin</a> &ndash; l&agrave;m mới khẩu vị với chiếc b&aacute;nh kem lạnh tuyệt hảo.</h4>\r\n<p><a href=\"https://www.vietnammm.com/vi/baskin-robbins-quan-2\">Baskin Robbins</a> l&agrave; chuỗi cửa h&agrave;ng kem Mỹ lớn nhất thế giới, th&agrave;nh c&ocirc;ng với 52 quốc gia, hơn 7.600 cửa h&agrave;ng tr&ecirc;n thế giới, 1.300 hương vị kem v&agrave; nhiều m&oacute;n tr&aacute;ng miệng ngon tuyệt. <a href=\"https://www.vietnammm.com/vi/baskin-robbins-quan-2\">Baskin Robbin</a> kh&ocirc;ng chỉ nổi tiếng với 31 M&ugrave;i Kem Đặc Trưng m&agrave; c&ograve;n mang lại cảm gi&aacute;c v&ocirc; c&ugrave;ng mới lạ với sự kết hợp s&aacute;ng tạo độc đ&aacute;o giữa b&aacute;nh ngọt v&agrave; kem lạnh mang lại trải nghiệm tuyệt vời kh&ocirc;ng thể kh&ocirc;ng tự m&igrave;nh kiểm chứng.</p>\r\n<p><a href=\"https://www.vietnammm.com/vi/baskin-robbins-quan-2\">Baskin Robbin</a> hiện đ&atilde; cung cấp dịch vụ giao m&oacute;n tận nơi v&agrave; <a href=\"https://www.vietnammm.com/vi\">đặt m&oacute;n trực tuyến</a> với nhiều loại b&aacute;nh kem lạnh cũng như nước uống rất hấp dẫn.</p>\r\n<h4><a href=\"https://www.vietnammm.com/vi/une-journee-a-paris\">Journ&eacute;e &agrave; Paris</a> &ndash; Tiệm b&aacute;nh Ph&aacute;p của người S&agrave;i G&ograve;n</h4>\r\n<p><a href=\"https://www.vietnammm.com/vi/une-journee-a-paris\">Journ&eacute;e &agrave; Paris </a>l&agrave; một tiệm b&aacute;nh Ph&aacute;p, chế biến những chiếc b&aacute;nh sandwich, pastry với những nguy&ecirc;n liệu được nhập tươi mới từ EU.</p>\r\n<div id=\"attachment_47076\" class=\"wp-caption aligncenter\" style=\"width: 573px;\"><a href=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-3.png\"><img class=\"size-full wp-image-47076\" src=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-3.png\" sizes=\"(max-width: 563px) 100vw, 563px\" srcset=\"https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-3.png 563w, https://www.vietnammm.com/blog/wp-content/uploads/2017/09/banh-ngot-sai-gon-3-245x300.png 245w\" alt=\"Journ&eacute;e &agrave; Paris &ndash; Tiệm b&aacute;nh Ph&aacute;p của người Saigon\" width=\"563\" height=\"688\" /></a>\r\n<p class=\"wp-caption-text\">Nguồn: pinterest.com</p>\r\n</div>\r\n<p>Đ&uacute;ng như t&ecirc;n gọi của n&oacute; &ldquo;Một ng&agrave;y ở Paris&rdquo; <a href=\"https://www.vietnammm.com/vi/une-journee-a-paris\">Journ&eacute;e &agrave; Paris </a>sẽ mang hương vị Paris thuần khiết nhất trong từng chiếc b&aacute;nh ngọt v&agrave; c&ograve;n g&igrave; ho&agrave;n hảo hơn khi kết hợp c&ugrave;ng với ly capuchino n&oacute;ng. Une Journ&eacute;e &agrave; Paris lu&ocirc;n được c&aacute;c kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao nhờ l&agrave;m ra những chiếc b&aacute;nh Ph&aacute;p thơm ngon v&agrave; nhiều dinh dưỡng, b&aacute;nh được <a href=\"https://www.vietnammm.com/vi\">giao tận nơi </a>nhưng vẫn đảm bảo độ tươi ngon do l&agrave;m ngay trong ng&agrave;y v&agrave; chưa bao giờ l&agrave;m bạn thất vọng.</p>\r\n</section>', '1544354211274hinhanh4.png', 9, '2018-12-08 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluanbaiviet`
--

CREATE TABLE `binhluanbaiviet` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_baiviet` int(10) UNSIGNED NOT NULL,
  `id_taikhoan` int(10) UNSIGNED NOT NULL,
  `ngaydang` timestamp NULL DEFAULT NULL,
  `ngaysua` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluanbaiviet`
--

INSERT INTO `binhluanbaiviet` (`id`, `noidung`, `id_baiviet`, `id_taikhoan`, `ngaydang`, `ngaysua`) VALUES
(1, 'Bình luận 1', 1, 2, '2018-11-03 17:00:00', NULL),
(2, 'test bình luận', 1, 8, '2018-11-30 17:00:00', NULL),
(3, 'Thêm bình luận test', 1, 8, '2018-11-30 17:00:00', NULL),
(4, 'Test lần 3', 1, 8, '2018-11-30 17:00:00', NULL),
(5, 'Test cmt 4', 1, 8, '2018-11-30 17:00:00', NULL),
(6, 'thùy', 1, 8, '2018-11-30 17:00:00', NULL),
(7, 'Huỳnh văn thùy', 1, 8, '2018-11-30 17:00:00', NULL),
(9, 'Bình luận 1', 16, 8, '2018-11-30 17:00:00', NULL),
(10, 'Nem chua rán ở đây ăn ngon ghê, nem nóng hổi, giòn ăn với sốt chua chua cực kì hợp luôn, ăn cả chục viên mà vẫn ko ngán. Còn về bánh giò thì lần đầu mình ăn bánh giò thập cẩm giống vậy luôn, thịt, nem,.ăn kèm ngon mà nhiều nữa, có điều ăn cái này xong hơi ngán bánh giò 1 tẹo.', 2, 8, '2018-12-02 17:00:00', NULL),
(11, 'a', 19, 8, '2018-12-08 17:00:00', NULL),
(12, 'Danh sách bình luậ', 21, 9, '2018-12-08 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `soluong`, `id_hoadon`, `id_sanpham`) VALUES
(1, 1, 1, 3),
(3, 1, 1, 4),
(4, 1, 2, 4),
(5, 1, 2, 6),
(6, 3, 3, 3),
(7, 1, 3, 4),
(8, 3, 3, 6),
(9, 1, 4, 2),
(10, 1, 5, 5),
(11, 1, 5, 6),
(12, 1, 6, 6),
(13, 1, 6, 7),
(14, 1, 7, 2),
(15, 1, 7, 5),
(16, 1, 7, 6),
(17, 1, 8, 8),
(18, 5, 9, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `anhchitiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`id`, `anhchitiet`, `id_sanpham`) VALUES
(9, 'Ct1BanhMan1.jpg', 1),
(10, 'Ct2BanhMan1.jpg', 1),
(13, 'Ct3BanhMan1.jpg', 1),
(14, 'Ct4BanhMan1.jpg', 1),
(15, 'Ct1Banhngot1.png', 2),
(16, 'Ct2Banhngot1.png', 2),
(17, 'Ct3Banhngot1.png', 2),
(18, 'Ct4Banhngot1.png', 2),
(19, '15424706715131banhngot2.jpg', 3),
(20, '15424706804502banhngot2.jpg', 3),
(21, '15424706882604banhngot2.jpg', 3),
(22, '1542470697834banhngot2.jpg', 3),
(23, '15424710348291banhngot3.jpg', 5),
(24, '15424710424622banhngot3.jpg', 5),
(25, '15424710510913banhngot3.jpg', 5),
(26, '15424710579934banhngot3.jpg', 5),
(27, '1542471960389camep1.jpg', 6),
(28, '1542471967133camep2.jpg', 6),
(29, '1542471975663camep4.jpg', 6),
(30, '1542471982068capep3.jpg', 6),
(31, '15424757003221nuocchanh.jpg', 7),
(32, '15424757095082nuocchanh.jpg', 7),
(33, '15424757176293nuocchanh.jpg', 7),
(34, '15424757266834nuocchanh.jpg', 7),
(35, '15424758184611trasua.png', 8),
(36, '15424758259482trasua.jpg', 8),
(37, '15424758349823trasua.jpg', 8),
(38, '15424758423914trasua.jpg', 8),
(41, '15424778620091banhngot4.jpg', 4),
(42, '15424778705302banhngot4.jpg', 4),
(43, '15424778795483banhngot4.jpg', 4),
(44, '15424778857633banhngot4.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sonha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `trangthai` int(11) NOT NULL,
  `ngaydat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `hoten`, `sonha`, `diachi`, `dienthoai`, `email`, `ghichu`, `trangthai`, `ngaydat`) VALUES
(1, 'Huỳnh Văn Thùy', 'Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Thôn 5 An lâu 1', '097365528', 'HuynhVan@gmail.com', 'Không có', 3, '2018-11-25 19:05:12'),
(2, 'Huỳnh Văn Thùy', 'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 'Thôn 5 An lâu 1', '0977977977', 'huynhvanthuy1997@gmail.com', 'giao hàng gấp trong 3 ngày', 1, '2018-12-09 11:05:19'),
(3, 'Huỳnh Văn Thùy', 'Phường An Mỹ, Thành phố Tam Kỳ, Tỉnh Quảng Nam', '171 Hùng Vương', '0977583016', 'huynhvanthuy1997@gmail.com', 'Không có gì', 2, '2018-12-10 01:22:02'),
(4, 'Trần Quang Tân', 'Phường Tân An, Thành phố Hội An, Tỉnh Quảng Nam', '12 Lê Minh Hoàng', '0936156285', 'tan@gmail.com', 'Không có', 2, '2018-12-02 01:24:05'),
(5, 'Nguyễn Châu', 'Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', '12 Lý Thái Tổ', '0936156285', 'tan@gmail.com', 'Trà sữa rất ngon', 2, '2018-12-04 01:26:57'),
(6, 'Nguyễn Thành Nam', 'Phường Minh An, Thành phố Hội An, Tỉnh Quảng Nam', '12 An Dương Vương', '0826153715', 'namthanh1739@gmail.com', 'Không cần ship nhanh', 2, '2018-12-06 01:28:12'),
(7, 'Lê Hoàng Chánh', 'Phường Hòa Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', '33 Ngô Quyền', '093723749', 'huynhhoang@gmail.com', 'Giao hàng nhanh', 1, '2018-12-10 01:29:35'),
(8, 'Châu Thị Thi Ngân', 'Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', '13 Hoàng Chính', '09374635273', 'hoangchinh@gmail.com', 'Không có gì', 2, '2018-12-10 01:31:58'),
(9, 'HUYNH VAN tUHY', 'Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', '12 Duy Tân', '0936156285', 'huynhhoang@gmail.com', 'Giao hàng nhanh', 0, '2018-12-10 03:49:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloai`) VALUES
(1, 'Bánh mặn abc'),
(2, 'Bánh ngọt'),
(3, 'Nước uống'),
(4, 'Trà sữa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(64, '2018_10_31_103556_create_taikhoan_table', 1),
(65, '2018_10_31_103656_create_loaisanpham_table', 1),
(66, '2018_10_31_103720_create_hoadon_table', 1),
(67, '2018_10_31_103754_create_baiviet_table', 1),
(68, '2018_10_31_103823_create_sanpham_table', 1),
(69, '2018_10_31_103847_create_chitiethoadon_table', 1),
(70, '2018_10_31_103914_create_binhluanbaiviet_table', 1),
(71, '2018_10_31_103945_create_chitietsanpham_table', 1),
(72, '2018_10_31_104007_create_chitietbinhluan_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_huyens`
--

CREATE TABLE `quan_huyens` (
  `id` int(11) DEFAULT NULL,
  `ten` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `donvi` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `tenkhongdau` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `tendaydu` varchar(29) CHARACTER SET utf8 DEFAULT NULL,
  `tenthuong` varchar(31) CHARACTER SET utf8 DEFAULT NULL,
  `tenhanhchinh` varchar(46) CHARACTER SET utf8 DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `id_tinhthanhpho` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quan_huyens`
--

INSERT INTO `quan_huyens` (`id`, `ten`, `donvi`, `tenkhongdau`, `tendaydu`, `tenthuong`, `tenhanhchinh`, `code`, `id_tinhthanhpho`) VALUES
(0, '', '', '', '', '', '', 0, 0),
(490, 'Liên Chiểu', 'quan', 'lien-chieu', 'Quận Liên Chiểu', 'Liên Chiểu, Đà Nẵng', 'Quận Liên Chiểu, Thành phố Đà Nẵng', 490, 48),
(491, 'Thanh Khê', 'quan', 'thanh-khe', 'Quận Thanh Khê', 'Thanh Khê, Đà Nẵng', 'Quận Thanh Khê, Thành phố Đà Nẵng', 491, 48),
(492, 'Hải Châu', 'quan', 'hai-chau', 'Quận Hải Châu', 'Hải Châu, Đà Nẵng', 'Quận Hải Châu, Thành phố Đà Nẵng', 492, 48),
(493, 'Sơn Trà', 'quan', 'son-tra', 'Quận Sơn Trà', 'Sơn Trà, Đà Nẵng', 'Quận Sơn Trà, Thành phố Đà Nẵng', 493, 48),
(494, 'Ngũ Hành Sơn', 'quan', 'ngu-hanh-son', 'Quận Ngũ Hành Sơn', 'Ngũ Hành Sơn, Đà Nẵng', 'Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 494, 48),
(495, 'Cẩm Lệ', 'quan', 'cam-le', 'Quận Cẩm Lệ', 'Cẩm Lệ, Đà Nẵng', 'Quận Cẩm Lệ, Thành phố Đà Nẵng', 495, 48),
(497, 'Hòa Vang', 'huyen', 'hoa-vang', 'Huyện Hòa Vang', 'Hòa Vang, Đà Nẵng', 'Huyện Hòa Vang, Thành phố Đà Nẵng', 497, 48),
(502, 'Tam Kỳ', 'thanh-pho', 'tam-ky', 'Thành phố Tam Kỳ', 'Tam Kỳ, Quảng Nam', 'Thành phố Tam Kỳ, Tỉnh Quảng Nam', 502, 49),
(503, 'Hội An', 'thanh-pho', 'hoi-an', 'Thành phố Hội An', 'Hội An, Quảng Nam', 'Thành phố Hội An, Tỉnh Quảng Nam', 503, 49),
(504, 'Tây Giang', 'huyen', 'tay-giang', 'Huyện Tây Giang', 'Tây Giang, Quảng Nam', 'Huyện Tây Giang, Tỉnh Quảng Nam', 504, 49),
(505, 'Đông Giang', 'huyen', 'dong-giang', 'Huyện Đông Giang', 'Đông Giang, Quảng Nam', 'Huyện Đông Giang, Tỉnh Quảng Nam', 505, 49),
(506, 'Đại Lộc', 'huyen', 'dai-loc', 'Huyện Đại Lộc', 'Đại Lộc, Quảng Nam', 'Huyện Đại Lộc, Tỉnh Quảng Nam', 506, 49),
(507, 'Điện Bàn', 'thi-xa', 'dien-ban', 'Thị xã Điện Bàn', 'Điện Bàn, Quảng Nam', 'Thị xã Điện Bàn, Tỉnh Quảng Nam', 507, 49),
(508, 'Duy Xuyên', 'huyen', 'duy-xuyen', 'Huyện Duy Xuyên', 'Duy Xuyên, Quảng Nam', 'Huyện Duy Xuyên, Tỉnh Quảng Nam', 508, 49),
(509, 'Quế Sơn', 'huyen', 'que-son', 'Huyện Quế Sơn', 'Quế Sơn, Quảng Nam', 'Huyện Quế Sơn, Tỉnh Quảng Nam', 509, 49),
(510, 'Nam Giang', 'huyen', 'nam-giang', 'Huyện Nam Giang', 'Nam Giang, Quảng Nam', 'Huyện Nam Giang, Tỉnh Quảng Nam', 510, 49),
(511, 'Phước Sơn', 'huyen', 'phuoc-son', 'Huyện Phước Sơn', 'Phước Sơn, Quảng Nam', 'Huyện Phước Sơn, Tỉnh Quảng Nam', 511, 49),
(512, 'Hiệp Đức', 'huyen', 'hiep-duc', 'Huyện Hiệp Đức', 'Hiệp Đức, Quảng Nam', 'Huyện Hiệp Đức, Tỉnh Quảng Nam', 512, 49),
(513, 'Thăng Bình', 'huyen', 'thang-binh', 'Huyện Thăng Bình', 'Thăng Bình, Quảng Nam', 'Huyện Thăng Bình, Tỉnh Quảng Nam', 513, 49),
(514, 'Tiên Phước', 'huyen', 'tien-phuoc', 'Huyện Tiên Phước', 'Tiên Phước, Quảng Nam', 'Huyện Tiên Phước, Tỉnh Quảng Nam', 514, 49),
(515, 'Bắc Trà My', 'huyen', 'bac-tra-my', 'Huyện Bắc Trà My', 'Bắc Trà My, Quảng Nam', 'Huyện Bắc Trà My, Tỉnh Quảng Nam', 515, 49),
(516, 'Nam Trà My', 'huyen', 'nam-tra-my', 'Huyện Nam Trà My', 'Nam Trà My, Quảng Nam', 'Huyện Nam Trà My, Tỉnh Quảng Nam', 516, 49),
(517, 'Núi Thành', 'huyen', 'nui-thanh', 'Huyện Núi Thành', 'Núi Thành, Quảng Nam', 'Huyện Núi Thành, Tỉnh Quảng Nam', 517, 49),
(518, 'Phú Ninh', 'huyen', 'phu-ninh', 'Huyện Phú Ninh', 'Phú Ninh, Quảng Nam', 'Huyện Phú Ninh, Tỉnh Quảng Nam', 518, 49),
(519, 'Nông Sơn', 'huyen', 'nong-son', 'Huyện Nông Sơn', 'Nông Sơn, Quảng Nam', 'Huyện Nông Sơn, Tỉnh Quảng Nam', 519, 49);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tensanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giagoc` double NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `anhchinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `luotthich` int(11) NOT NULL,
  `id_loaisp` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `mota`, `giagoc`, `khuyenmai`, `anhchinh`, `tinhtrang`, `luotthich`, `id_loaisp`) VALUES
(1, 'Bánh ổ mặn', 'Bánh ổ mặn được làm từ thành phần chủ yếu là bột gạo pha với ít bột mì cùng với nước cốt dừa, thêm chút gia vị đường, muối và được chế biến bằng phương pháp hấp cách thủy. Nước bột bánh sau k', 20000, 5, 'BanhMan1.png', 1, 100, 1),
(2, 'Panna cotta', 'Panna cotta thực chất là một món kem nấu của Ý. Món ăn này được làm ra bằng cách đun liu riu kem, sữa, đường và gelatin với nhau, sau đó để lạnh cho đông lại.\r\nPanna cotta có nguồn gốc từ vùn', 20000, 0, 'BanhNgot1.png', 1, 323, 2),
(3, 'Biscotti', 'Không phải tự nhiên mà người ta gọi Biscotti là chiếc bánh “thách thức thời gian”. Bánh xuất hiện từ thế kỉ XVIII, đã tồn tại, gắn bó với người dân nơi đây. Khác hẳn với những loại bánh ngọt ', 13000, 2, 'BanhNgot2.png', 1, 1238, 2),
(4, 'Tartufo di Pizzo', 'Bánh Tartufo di Pizzo là đặc sản vùng Calabria và có nguồn gốc từ thời cổ xưa. Trong một chiếc bánh tartufo di pizzo thường gồm nhiều hơn hai hương vị khác nhau, thành phần chủ yếu là kem, vớ', 40000, 5, 'BanhNgot3.png', 0, 3853, 2),
(5, 'Bánh Cannoli ', 'Đúng như tên gọi, bánh cannoli bao gồm một lớp pastry được uốn cong thành hình chiếc ống, bên trong có nhân kem ngọt, hoặc thêm hoa quả. Kích thước của món bánh này có thể thay đổi tùy theo v', 30000, 4, 'BanhNgot4.png', 0, 5302, 2),
(6, 'Cam ép nguyên chất', 'Nước cam ép nguyên chất \r\nNgày hè oi bức với nhiệt độ ngoài trời có khi lên tới 40 độ C \r\nLàm sao lại phải đi ra ngoài trong khi bạn hoàn toàn có thể ngồi tại chỗ và gọi cho mình ly nước cam mát ngọt thiên nhiên đầy năng lượng \r\nNước ép cam tươi nguyên chất tại Lắc Coffee được chắt lọc từ những trái cam tươi ngon, chín mọng, cho ra sản phẩm là chai nước cam đỏ tươi ngọt dịu hòa vị chua thanh cùng với đá mát lạnh', 15000, 0, 'NuocUong.png', 1, 123, 3),
(7, 'Nước chanh đá', 'Chanh là một loại hoa quả được rất nhiều chị em phụ nữ yêu thích vì giá trị dinh dưỡng cao và tác dụng làm đẹp, giảm cân tự nhiên của chúng. Nhưng ít người biết hết được những công dụng bảo vệ sức khỏe tuyệt vời của chúng như nâng cao sức đề kháng và phòng ngừa một số bệnh.', 20000, 0, 'NuocUong1.png', 0, 32, 3),
(8, 'Đài Loan socola', 'Trà sữa là một món ăn vặt, là thức uống giải khát quen thuộc, đặc biệt là đối với trẻ nhỏ. Với hương vị thơm ngon béo ngậy của socola, đậm đà dễ uống, trà đen mát giải nhiệt, dùng kèm với trân châu dai dai hoặc thạch rau câu giòn, không ít người “mê mẩn” món trà sữa socola.', 45000, 2, 'TraSua1.png', 1, 462, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentaikhoan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phanquyen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenhienthi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentaikhoan`, `email`, `matkhau`, `phanquyen`, `tenhienthi`, `hinhanh`) VALUES
(1, 'bmurazik', 'sam.rogahn@hotmail.com', 'aut', 'user', 'Prof. Zane Walker', 'avatar.png'),
(2, 'rodriguez.quinton', 'jones.vernice@yahoo.com', 'labore', 'user', 'Mr. Solon Sauer', 'avatar.png'),
(3, 'anahi97', 'kaleb.wiza@wisoky.com', 'doloribus', '0', 'Carrie Friesen III', 'avatar.png'),
(4, 'alek.daugherty', 'chesley06@marquardt.net', 'nesciunt', '1', 'Carli McCullough', 'avatar.png'),
(5, 'tiffany.thompson', 'narciso28@dubuque.com', 'inventore', '1', 'Ms. June Considine DVM', 'avatar.png'),
(6, 'thuuy', 'a@gmail.com', '123', 'user', 'Thùy', ''),
(8, 'vanthuy97', 'huynhvanthuy1997@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'Huỳnh Văn Thùy', '154263798125929790390_1101604086643744_6839404581764706430_n.jpg'),
(9, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'Admin123', '1543786338425avatar.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_thanh_phos`
--

CREATE TABLE `tinh_thanh_phos` (
  `id` int(11) DEFAULT NULL,
  `ten` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `tenkhongdau` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `donvi` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `tendaydu` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tinh_thanh_phos`
--

INSERT INTO `tinh_thanh_phos` (`id`, `ten`, `tenkhongdau`, `donvi`, `tendaydu`, `code`) VALUES
(0, '', '', '', '', 0),
(48, 'Đà Nẵng', 'da-nang', 'thanh-pho', 'Thành phố Đà Nẵng', 48),
(49, 'Quảng Nam', 'quang-nam', 'tinh', 'Tỉnh Quảng Nam', 49);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xa_phuongs`
--

CREATE TABLE `xa_phuongs` (
  `id` int(11) DEFAULT NULL,
  `ten` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `donvi` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tenkhongdau` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tendaydu` varchar(29) CHARACTER SET utf8 DEFAULT NULL,
  `tenthuong` varchar(42) CHARACTER SET utf8 DEFAULT NULL,
  `tenhanhchinh` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `id_quanhuyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `xa_phuongs`
--

INSERT INTO `xa_phuongs` (`id`, `ten`, `donvi`, `tenkhongdau`, `tendaydu`, `tenthuong`, `tenhanhchinh`, `code`, `id_quanhuyen`) VALUES
(20194, 'Hòa Hiệp Bắc', 'phuong', 'hoa-hiep-bac', 'Phường Hòa Hiệp Bắc', 'Hòa Hiệp Bắc, Liên Chiểu, Đà Nẵng', 'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 20194, 490),
(20195, 'Hòa Hiệp Nam', 'phuong', 'hoa-hiep-nam', 'Phường Hòa Hiệp Nam', 'Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng', 'Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 20195, 490),
(20197, 'Hòa Khánh Bắc', 'phuong', 'hoa-khanh-bac', 'Phường Hòa Khánh Bắc', 'Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', 'Phường Hòa Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 20197, 490),
(20198, 'Hòa Khánh Nam', 'phuong', 'hoa-khanh-nam', 'Phường Hòa Khánh Nam', 'Hòa Khánh Nam, Liên Chiểu, Đà Nẵng', 'Phường Hòa Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 20198, 490),
(20200, 'Hòa Minh', 'phuong', 'hoa-minh', 'Phường Hòa Minh', 'Hòa Minh, Liên Chiểu, Đà Nẵng', 'Phường Hòa Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 20200, 490),
(20203, 'Tam Thuận', 'phuong', 'tam-thuan', 'Phường Tam Thuận', 'Tam Thuận, Thanh Khê, Đà Nẵng', 'Phường Tam Thuận, Quận Thanh Khê, Thành phố Đà Nẵng', 20203, 491),
(20206, 'Thanh Khê Tây', 'phuong', 'thanh-khe-tay', 'Phường Thanh Khê Tây', 'Thanh Khê Tây, Thanh Khê, Đà Nẵng', 'Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 20206, 491),
(20207, 'Thanh Khê Đông', 'phuong', 'thanh-khe-dong', 'Phường Thanh Khê Đông', 'Thanh Khê Đông, Thanh Khê, Đà Nẵng', 'Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', 20207, 491),
(20209, 'Xuân Hà', 'phuong', 'xuan-ha', 'Phường Xuân Hà', 'Xuân Hà, Thanh Khê, Đà Nẵng', 'Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 20209, 491),
(20212, 'Tân Chính', 'phuong', 'tan-chinh', 'Phường Tân Chính', 'Tân Chính, Thanh Khê, Đà Nẵng', 'Phường Tân Chính, Quận Thanh Khê, Thành phố Đà Nẵng', 20212, 491),
(20215, 'Chính Gián', 'phuong', 'chinh-gian', 'Phường Chính Gián', 'Chính Gián, Thanh Khê, Đà Nẵng', 'Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 20215, 491),
(20218, 'Vĩnh Trung', 'phuong', 'vinh-trung', 'Phường Vĩnh Trung', 'Vĩnh Trung, Thanh Khê, Đà Nẵng', 'Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', 20218, 491),
(20221, 'Thạc Gián', 'phuong', 'thac-gian', 'Phường Thạc Gián', 'Thạc Gián, Thanh Khê, Đà Nẵng', 'Phường Thạc Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 20221, 491),
(20224, 'An Khê', 'phuong', 'an-khe', 'Phường An Khê', 'An Khê, Thanh Khê, Đà Nẵng', 'Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 20224, 491),
(20225, 'Hòa Khê', 'phuong', 'hoa-khe', 'Phường Hòa Khê', 'Hòa Khê, Thanh Khê, Đà Nẵng', 'Phường Hòa Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 20225, 491),
(20227, 'Thanh Bình', 'phuong', 'thanh-binh', 'Phường Thanh Bình', 'Thanh Bình, Hải Châu, Đà Nẵng', 'Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', 20227, 492),
(20230, 'Thuận Phước', 'phuong', 'thuan-phuoc', 'Phường Thuận Phước', 'Thuận Phước, Hải Châu, Đà Nẵng', 'Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', 20230, 492),
(20233, 'Thạch Thang', 'phuong', 'thach-thang', 'Phường Thạch Thang', 'Thạch Thang, Hải Châu, Đà Nẵng', 'Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', 20233, 492),
(20236, 'Hải Châu  I', 'phuong', 'hai-chau-i', 'Phường Hải Châu  I', 'Hải Châu  I, Hải Châu, Đà Nẵng', 'Phường Hải Châu  I, Quận Hải Châu, Thành phố Đà Nẵng', 20236, 492),
(20239, 'Hải Châu II', 'phuong', 'hai-chau-ii', 'Phường Hải Châu II', 'Hải Châu II, Hải Châu, Đà Nẵng', 'Phường Hải Châu II, Quận Hải Châu, Thành phố Đà Nẵng', 20239, 492),
(20242, 'Phước Ninh', 'phuong', 'phuoc-ninh', 'Phường Phước Ninh', 'Phước Ninh, Hải Châu, Đà Nẵng', 'Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', 20242, 492),
(20245, 'Hòa Thuận Tây', 'phuong', 'hoa-thuan-tay', 'Phường Hòa Thuận Tây', 'Hòa Thuận Tây, Hải Châu, Đà Nẵng', 'Phường Hòa Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 20245, 492),
(20246, 'Hòa Thuận Đông', 'phuong', 'hoa-thuan-dong', 'Phường Hòa Thuận Đông', 'Hòa Thuận Đông, Hải Châu, Đà Nẵng', 'Phường Hòa Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', 20246, 492),
(20248, 'Nam Dương', 'phuong', 'nam-duong', 'Phường Nam Dương', 'Nam Dương, Hải Châu, Đà Nẵng', 'Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', 20248, 492),
(20251, 'Bình Hiên', 'phuong', 'binh-hien', 'Phường Bình Hiên', 'Bình Hiên, Hải Châu, Đà Nẵng', 'Phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', 20251, 492),
(20254, 'Bình Thuận', 'phuong', 'binh-thuan', 'Phường Bình Thuận', 'Bình Thuận, Hải Châu, Đà Nẵng', 'Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', 20254, 492),
(20257, 'Hòa Cường Bắc', 'phuong', 'hoa-cuong-bac', 'Phường Hòa Cường Bắc', 'Hòa Cường Bắc, Hải Châu, Đà Nẵng', 'Phường Hòa Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 20257, 492),
(20258, 'Hòa Cường Nam', 'phuong', 'hoa-cuong-nam', 'Phường Hòa Cường Nam', 'Hòa Cường Nam, Hải Châu, Đà Nẵng', 'Phường Hòa Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 20258, 492),
(20263, 'Thọ Quang', 'phuong', 'tho-quang', 'Phường Thọ Quang', 'Thọ Quang, Sơn Trà, Đà Nẵng', 'Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', 20263, 493),
(20266, 'Nại Hiên Đông', 'phuong', 'nai-hien-dong', 'Phường Nại Hiên Đông', 'Nại Hiên Đông, Sơn Trà, Đà Nẵng', 'Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 20266, 493),
(20269, 'Mân Thái', 'phuong', 'man-thai', 'Phường Mân Thái', 'Mân Thái, Sơn Trà, Đà Nẵng', 'Phường Mân Thái, Quận Sơn Trà, Thành phố Đà Nẵng', 20269, 493),
(20272, 'An Hải Bắc', 'phuong', 'an-hai-bac', 'Phường An Hải Bắc', 'An Hải Bắc, Sơn Trà, Đà Nẵng', 'Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 20272, 493),
(20275, 'Phước Mỹ', 'phuong', 'phuoc-my', 'Phường Phước Mỹ', 'Phước Mỹ, Sơn Trà, Đà Nẵng', 'Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', 20275, 493),
(20278, 'An Hải Tây', 'phuong', 'an-hai-tay', 'Phường An Hải Tây', 'An Hải Tây, Sơn Trà, Đà Nẵng', 'Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 20278, 493),
(20281, 'An Hải Đông', 'phuong', 'an-hai-dong', 'Phường An Hải Đông', 'An Hải Đông, Sơn Trà, Đà Nẵng', 'Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 20281, 493),
(20284, 'Mỹ An', 'phuong', 'my-an', 'Phường Mỹ An', 'Mỹ An, Ngũ Hành Sơn, Đà Nẵng', 'Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20284, 494),
(20285, 'Khuê Mỹ', 'phuong', 'khue-my', 'Phường Khuê Mỹ', 'Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng', 'Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20285, 494),
(20287, 'Hoà Quý', 'phuong', 'hoa-quy', 'Phường Hoà Quý', 'Hoà Quý, Ngũ Hành Sơn, Đà Nẵng', 'Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20287, 494),
(20290, 'Hoà Hải', 'phuong', 'hoa-hai', 'Phường Hoà Hải', 'Hoà Hải, Ngũ Hành Sơn, Đà Nẵng', 'Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20290, 494),
(20260, 'Khuê Trung', 'phuong', 'khue-trung', 'Phường Khuê Trung', 'Khuê Trung, Cẩm Lệ, Đà Nẵng', 'Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20260, 495),
(20305, 'Hòa Phát', 'phuong', 'hoa-phat', 'Phường Hòa Phát', 'Hòa Phát, Cẩm Lệ, Đà Nẵng', 'Phường Hòa Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20305, 495),
(20306, 'Hòa An', 'phuong', 'hoa-an', 'Phường Hòa An', 'Hòa An, Cẩm Lệ, Đà Nẵng', 'Phường Hòa An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20306, 495),
(20311, 'Hòa Thọ Tây', 'phuong', 'hoa-tho-tay', 'Phường Hòa Thọ Tây', 'Hòa Thọ Tây, Cẩm Lệ, Đà Nẵng', 'Phường Hòa Thọ Tây, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20311, 495),
(20312, 'Hòa Thọ Đông', 'phuong', 'hoa-tho-dong', 'Phường Hòa Thọ Đông', 'Hòa Thọ Đông, Cẩm Lệ, Đà Nẵng', 'Phường Hòa Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20312, 495),
(20314, 'Hòa Xuân', 'phuong', 'hoa-xuan', 'Phường Hòa Xuân', 'Hòa Xuân, Cẩm Lệ, Đà Nẵng', 'Phường Hòa Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20314, 495),
(20293, 'Hòa Bắc', 'xa', 'hoa-bac', 'Xã Hòa Bắc', 'Hòa Bắc, Hòa Vang, Đà Nẵng', 'Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', 20293, 497),
(20296, 'Hòa Liên', 'xa', 'hoa-lien', 'Xã Hòa Liên', 'Hòa Liên, Hòa Vang, Đà Nẵng', 'Xã Hòa Liên, Huyện Hòa Vang, Thành phố Đà Nẵng', 20296, 497),
(20299, 'Hòa Ninh', 'xa', 'hoa-ninh', 'Xã Hòa Ninh', 'Hòa Ninh, Hòa Vang, Đà Nẵng', 'Xã Hòa Ninh, Huyện Hòa Vang, Thành phố Đà Nẵng', 20299, 497),
(20302, 'Hòa Sơn', 'xa', 'hoa-son', 'Xã Hòa Sơn', 'Hòa Sơn, Hòa Vang, Đà Nẵng', 'Xã Hòa Sơn, Huyện Hòa Vang, Thành phố Đà Nẵng', 20302, 497),
(20308, 'Hòa Nhơn', 'xa', 'hoa-nhon', 'Xã Hòa Nhơn', 'Hòa Nhơn, Hòa Vang, Đà Nẵng', 'Xã Hòa Nhơn, Huyện Hòa Vang, Thành phố Đà Nẵng', 20308, 497),
(20317, 'Hòa Phú', 'xa', 'hoa-phu', 'Xã Hòa Phú', 'Hòa Phú, Hòa Vang, Đà Nẵng', 'Xã Hòa Phú, Huyện Hòa Vang, Thành phố Đà Nẵng', 20317, 497),
(20320, 'Hòa Phong', 'xa', 'hoa-phong', 'Xã Hòa Phong', 'Hòa Phong, Hòa Vang, Đà Nẵng', 'Xã Hòa Phong, Huyện Hòa Vang, Thành phố Đà Nẵng', 20320, 497),
(20323, 'Hòa Châu', 'xa', 'hoa-chau', 'Xã Hòa Châu', 'Hòa Châu, Hòa Vang, Đà Nẵng', 'Xã Hòa Châu, Huyện Hòa Vang, Thành phố Đà Nẵng', 20323, 497),
(20326, 'Hòa Tiến', 'xa', 'hoa-tien', 'Xã Hòa Tiến', 'Hòa Tiến, Hòa Vang, Đà Nẵng', 'Xã Hòa Tiến, Huyện Hòa Vang, Thành phố Đà Nẵng', 20326, 497),
(20329, 'Hòa Phước', 'xa', 'hoa-phuoc', 'Xã Hòa Phước', 'Hòa Phước, Hòa Vang, Đà Nẵng', 'Xã Hòa Phước, Huyện Hòa Vang, Thành phố Đà Nẵng', 20329, 497),
(20332, 'Hòa Khương', 'xa', 'hoa-khuong', 'Xã Hòa Khương', 'Hòa Khương, Hòa Vang, Đà Nẵng', 'Xã Hòa Khương, Huyện Hòa Vang, Thành phố Đà Nẵng', 20332, 497),
(20335, 'Tân Thạnh', 'phuong', 'tan-thanh', 'Phường Tân Thạnh', 'Tân Thạnh, Tam Kỳ, Quảng Nam', 'Phường Tân Thạnh, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20335, 502),
(20338, 'Phước Hòa', 'phuong', 'phuoc-hoa', 'Phường Phước Hòa', 'Phước Hòa, Tam Kỳ, Quảng Nam', 'Phường Phước Hòa, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20338, 502),
(20341, 'An Mỹ', 'phuong', 'an-my', 'Phường An Mỹ', 'An Mỹ, Tam Kỳ, Quảng Nam', 'Phường An Mỹ, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20341, 502),
(20344, 'Hòa Hương', 'phuong', 'hoa-huong', 'Phường Hòa Hương', 'Hòa Hương, Tam Kỳ, Quảng Nam', 'Phường Hòa Hương, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20344, 502),
(20347, 'An Xuân', 'phuong', 'an-xuan', 'Phường An Xuân', 'An Xuân, Tam Kỳ, Quảng Nam', 'Phường An Xuân, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20347, 502),
(20350, 'An Sơn', 'phuong', 'an-son', 'Phường An Sơn', 'An Sơn, Tam Kỳ, Quảng Nam', 'Phường An Sơn, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20350, 502),
(20353, 'Trường Xuân', 'phuong', 'truong-xuan', 'Phường Trường Xuân', 'Trường Xuân, Tam Kỳ, Quảng Nam', 'Phường Trường Xuân, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20353, 502),
(20356, 'An Phú', 'phuong', 'an-phu', 'Phường An Phú', 'An Phú, Tam Kỳ, Quảng Nam', 'Phường An Phú, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20356, 502),
(20359, 'Tam Thanh', 'xa', 'tam-thanh', 'Xã Tam Thanh', 'Tam Thanh, Tam Kỳ, Quảng Nam', 'Xã Tam Thanh, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20359, 502),
(20362, 'Tam Thăng', 'xa', 'tam-thang', 'Xã Tam Thăng', 'Tam Thăng, Tam Kỳ, Quảng Nam', 'Xã Tam Thăng, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20362, 502),
(20371, 'Tam Phú', 'xa', 'tam-phu', 'Xã Tam Phú', 'Tam Phú, Tam Kỳ, Quảng Nam', 'Xã Tam Phú, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20371, 502),
(20375, 'Hoà Thuận', 'phuong', 'hoa-thuan', 'Phường Hoà Thuận', 'Hoà Thuận, Tam Kỳ, Quảng Nam', 'Phường Hoà Thuận, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20375, 502),
(20389, 'Tam Ngọc', 'xa', 'tam-ngoc', 'Xã Tam Ngọc', 'Tam Ngọc, Tam Kỳ, Quảng Nam', 'Xã Tam Ngọc, Thành phố Tam Kỳ, Tỉnh Quảng Nam', 20389, 502),
(20398, 'Minh An', 'phuong', 'minh-an', 'Phường Minh An', 'Minh An, Hội An, Quảng Nam', 'Phường Minh An, Thành phố Hội An, Tỉnh Quảng Nam', 20398, 503),
(20401, 'Tân An', 'phuong', 'tan-an', 'Phường Tân An', 'Tân An, Hội An, Quảng Nam', 'Phường Tân An, Thành phố Hội An, Tỉnh Quảng Nam', 20401, 503),
(20404, 'Cẩm Phô', 'phuong', 'cam-pho', 'Phường Cẩm Phô', 'Cẩm Phô, Hội An, Quảng Nam', 'Phường Cẩm Phô, Thành phố Hội An, Tỉnh Quảng Nam', 20404, 503),
(20407, 'Thanh Hà', 'phuong', 'thanh-ha', 'Phường Thanh Hà', 'Thanh Hà, Hội An, Quảng Nam', 'Phường Thanh Hà, Thành phố Hội An, Tỉnh Quảng Nam', 20407, 503),
(20410, 'Sơn Phong', 'phuong', 'son-phong', 'Phường Sơn Phong', 'Sơn Phong, Hội An, Quảng Nam', 'Phường Sơn Phong, Thành phố Hội An, Tỉnh Quảng Nam', 20410, 503),
(20413, 'Cẩm Châu', 'phuong', 'cam-chau', 'Phường Cẩm Châu', 'Cẩm Châu, Hội An, Quảng Nam', 'Phường Cẩm Châu, Thành phố Hội An, Tỉnh Quảng Nam', 20413, 503),
(20416, 'Cửa Đại', 'phuong', 'cua-dai', 'Phường Cửa Đại', 'Cửa Đại, Hội An, Quảng Nam', 'Phường Cửa Đại, Thành phố Hội An, Tỉnh Quảng Nam', 20416, 503),
(20419, 'Cẩm An', 'phuong', 'cam-an', 'Phường Cẩm An', 'Cẩm An, Hội An, Quảng Nam', 'Phường Cẩm An, Thành phố Hội An, Tỉnh Quảng Nam', 20419, 503),
(20422, 'Cẩm Hà', 'xa', 'cam-ha', 'Xã Cẩm Hà', 'Cẩm Hà, Hội An, Quảng Nam', 'Xã Cẩm Hà, Thành phố Hội An, Tỉnh Quảng Nam', 20422, 503),
(20425, 'Cẩm Kim', 'xa', 'cam-kim', 'Xã Cẩm Kim', 'Cẩm Kim, Hội An, Quảng Nam', 'Xã Cẩm Kim, Thành phố Hội An, Tỉnh Quảng Nam', 20425, 503),
(20428, 'Cẩm Nam', 'phuong', 'cam-nam', 'Phường Cẩm Nam', 'Cẩm Nam, Hội An, Quảng Nam', 'Phường Cẩm Nam, Thành phố Hội An, Tỉnh Quảng Nam', 20428, 503),
(20431, 'Cẩm Thanh', 'xa', 'cam-thanh', 'Xã Cẩm Thanh', 'Cẩm Thanh, Hội An, Quảng Nam', 'Xã Cẩm Thanh, Thành phố Hội An, Tỉnh Quảng Nam', 20431, 503),
(20434, 'Tân Hiệp', 'xa', 'tan-hiep', 'Xã Tân Hiệp', 'Tân Hiệp, Hội An, Quảng Nam', 'Xã Tân Hiệp, Thành phố Hội An, Tỉnh Quảng Nam', 20434, 503),
(20437, 'Ch\'ơm', 'xa', 'ch-om', 'Xã Ch\'ơm', 'Ch\'ơm, Tây Giang, Quảng Nam', 'Xã Ch\'ơm, Huyện Tây Giang, Tỉnh Quảng Nam', 20437, 504),
(20440, 'Ga Ri', 'xa', 'ga-ri', 'Xã Ga Ri', 'Ga Ri, Tây Giang, Quảng Nam', 'Xã Ga Ri, Huyện Tây Giang, Tỉnh Quảng Nam', 20440, 504),
(20443, 'A Xan', 'xa', 'a-xan', 'Xã A Xan', 'A Xan, Tây Giang, Quảng Nam', 'Xã A Xan, Huyện Tây Giang, Tỉnh Quảng Nam', 20443, 504),
(20446, 'Tr\'Hy', 'xa', 'tr-hy', 'Xã Tr\'Hy', 'Tr\'Hy, Tây Giang, Quảng Nam', 'Xã Tr\'Hy, Huyện Tây Giang, Tỉnh Quảng Nam', 20446, 504),
(20449, 'Lăng', 'xa', 'lang', 'Xã Lăng', 'Lăng, Tây Giang, Quảng Nam', 'Xã Lăng, Huyện Tây Giang, Tỉnh Quảng Nam', 20449, 504),
(20452, 'A Nông', 'xa', 'a-nong', 'Xã A Nông', 'A Nông, Tây Giang, Quảng Nam', 'Xã A Nông, Huyện Tây Giang, Tỉnh Quảng Nam', 20452, 504),
(20455, 'A Tiêng', 'xa', 'a-tieng', 'Xã A Tiêng', 'A Tiêng, Tây Giang, Quảng Nam', 'Xã A Tiêng, Huyện Tây Giang, Tỉnh Quảng Nam', 20455, 504),
(20458, 'Bha Lê', 'xa', 'bha-le', 'Xã Bha Lê', 'Bha Lê, Tây Giang, Quảng Nam', 'Xã Bha Lê, Huyện Tây Giang, Tỉnh Quảng Nam', 20458, 504),
(20461, 'A Vương', 'xa', 'a-vuong', 'Xã A Vương', 'A Vương, Tây Giang, Quảng Nam', 'Xã A Vương, Huyện Tây Giang, Tỉnh Quảng Nam', 20461, 504),
(20464, 'Dang', 'xa', 'dang', 'Xã Dang', 'Dang, Tây Giang, Quảng Nam', 'Xã Dang, Huyện Tây Giang, Tỉnh Quảng Nam', 20464, 504),
(20467, 'P Rao', 'thi-tran', 'p-rao', 'Thị trấn P Rao', 'P Rao, Đông Giang, Quảng Nam', 'Thị trấn P Rao, Huyện Đông Giang, Tỉnh Quảng Nam', 20467, 505),
(20470, 'Tà Lu', 'xa', 'ta-lu', 'Xã Tà Lu', 'Tà Lu, Đông Giang, Quảng Nam', 'Xã Tà Lu, Huyện Đông Giang, Tỉnh Quảng Nam', 20470, 505),
(20473, 'Sông Kôn', 'xa', 'song-kon', 'Xã Sông Kôn', 'Sông Kôn, Đông Giang, Quảng Nam', 'Xã Sông Kôn, Huyện Đông Giang, Tỉnh Quảng Nam', 20473, 505),
(20476, 'Jơ Ngây', 'xa', 'jo-ngay', 'Xã Jơ Ngây', 'Jơ Ngây, Đông Giang, Quảng Nam', 'Xã Jơ Ngây, Huyện Đông Giang, Tỉnh Quảng Nam', 20476, 505),
(20479, 'A Ting', 'xa', 'a-ting', 'Xã A Ting', 'A Ting, Đông Giang, Quảng Nam', 'Xã A Ting, Huyện Đông Giang, Tỉnh Quảng Nam', 20479, 505),
(20482, 'Tư', 'xa', 'tu', 'Xã  Tư', 'Tư, Đông Giang, Quảng Nam', 'Xã  Tư, Huyện Đông Giang, Tỉnh Quảng Nam', 20482, 505),
(20485, 'Ba', 'xa', 'ba', 'Xã Ba', 'Ba, Đông Giang, Quảng Nam', 'Xã Ba, Huyện Đông Giang, Tỉnh Quảng Nam', 20485, 505),
(20488, 'A Rooi', 'xa', 'a-rooi', 'Xã A Rooi', 'A Rooi, Đông Giang, Quảng Nam', 'Xã A Rooi, Huyện Đông Giang, Tỉnh Quảng Nam', 20488, 505),
(20491, 'Za Hung', 'xa', 'za-hung', 'Xã Za Hung', 'Za Hung, Đông Giang, Quảng Nam', 'Xã Za Hung, Huyện Đông Giang, Tỉnh Quảng Nam', 20491, 505),
(20494, 'Mà Cooi', 'xa', 'ma-cooi', 'Xã Mà Cooi', 'Mà Cooi, Đông Giang, Quảng Nam', 'Xã Mà Cooi, Huyện Đông Giang, Tỉnh Quảng Nam', 20494, 505),
(20497, 'Ka Dăng', 'xa', 'ka-dang', 'Xã Ka Dăng', 'Ka Dăng, Đông Giang, Quảng Nam', 'Xã Ka Dăng, Huyện Đông Giang, Tỉnh Quảng Nam', 20497, 505),
(20500, 'Ái Nghĩa', 'thi-tran', 'ai-nghia', 'Thị Trấn Ái Nghĩa', 'Ái Nghĩa, Đại Lộc, Quảng Nam', 'Thị Trấn Ái Nghĩa, Huyện Đại Lộc, Tỉnh Quảng Nam', 20500, 506),
(20503, 'Đại Sơn', 'xa', 'dai-son', 'Xã Đại Sơn', 'Đại Sơn, Đại Lộc, Quảng Nam', 'Xã Đại Sơn, Huyện Đại Lộc, Tỉnh Quảng Nam', 20503, 506),
(20506, 'Đại Lãnh', 'xa', 'dai-lanh', 'Xã Đại Lãnh', 'Đại Lãnh, Đại Lộc, Quảng Nam', 'Xã Đại Lãnh, Huyện Đại Lộc, Tỉnh Quảng Nam', 20506, 506),
(20509, 'Đại Hưng', 'xa', 'dai-hung', 'Xã Đại Hưng', 'Đại Hưng, Đại Lộc, Quảng Nam', 'Xã Đại Hưng, Huyện Đại Lộc, Tỉnh Quảng Nam', 20509, 506),
(20512, 'Đại Hồng', 'xa', 'dai-hong', 'Xã Đại Hồng', 'Đại Hồng, Đại Lộc, Quảng Nam', 'Xã Đại Hồng, Huyện Đại Lộc, Tỉnh Quảng Nam', 20512, 506),
(20515, 'Đại Đồng', 'xa', 'dai-dong', 'Xã Đại Đồng', 'Đại Đồng, Đại Lộc, Quảng Nam', 'Xã Đại Đồng, Huyện Đại Lộc, Tỉnh Quảng Nam', 20515, 506),
(20518, 'Đại Quang', 'xa', 'dai-quang', 'Xã Đại Quang', 'Đại Quang, Đại Lộc, Quảng Nam', 'Xã Đại Quang, Huyện Đại Lộc, Tỉnh Quảng Nam', 20518, 506),
(20521, 'Đại Nghĩa', 'xa', 'dai-nghia', 'Xã Đại Nghĩa', 'Đại Nghĩa, Đại Lộc, Quảng Nam', 'Xã Đại Nghĩa, Huyện Đại Lộc, Tỉnh Quảng Nam', 20521, 506),
(20524, 'Đại Hiệp', 'xa', 'dai-hiep', 'Xã Đại Hiệp', 'Đại Hiệp, Đại Lộc, Quảng Nam', 'Xã Đại Hiệp, Huyện Đại Lộc, Tỉnh Quảng Nam', 20524, 506),
(20527, 'Đại Thạnh', 'xa', 'dai-thanh', 'Xã Đại Thạnh', 'Đại Thạnh, Đại Lộc, Quảng Nam', 'Xã Đại Thạnh, Huyện Đại Lộc, Tỉnh Quảng Nam', 20527, 506),
(20530, 'Đại Chánh', 'xa', 'dai-chanh', 'Xã Đại Chánh', 'Đại Chánh, Đại Lộc, Quảng Nam', 'Xã Đại Chánh, Huyện Đại Lộc, Tỉnh Quảng Nam', 20530, 506),
(20533, 'Đại Tân', 'xa', 'dai-tan', 'Xã Đại Tân', 'Đại Tân, Đại Lộc, Quảng Nam', 'Xã Đại Tân, Huyện Đại Lộc, Tỉnh Quảng Nam', 20533, 506),
(20536, 'Đại Phong', 'xa', 'dai-phong', 'Xã Đại Phong', 'Đại Phong, Đại Lộc, Quảng Nam', 'Xã Đại Phong, Huyện Đại Lộc, Tỉnh Quảng Nam', 20536, 506),
(20539, 'Đại Minh', 'xa', 'dai-minh', 'Xã Đại Minh', 'Đại Minh, Đại Lộc, Quảng Nam', 'Xã Đại Minh, Huyện Đại Lộc, Tỉnh Quảng Nam', 20539, 506),
(20542, 'Đại Thắng', 'xa', 'dai-thang', 'Xã Đại Thắng', 'Đại Thắng, Đại Lộc, Quảng Nam', 'Xã Đại Thắng, Huyện Đại Lộc, Tỉnh Quảng Nam', 20542, 506),
(20545, 'Đại Cường', 'xa', 'dai-cuong', 'Xã Đại Cường', 'Đại Cường, Đại Lộc, Quảng Nam', 'Xã Đại Cường, Huyện Đại Lộc, Tỉnh Quảng Nam', 20545, 506),
(20547, 'Đại An', 'xa', 'dai-an', 'Xã Đại An', 'Đại An, Đại Lộc, Quảng Nam', 'Xã Đại An, Huyện Đại Lộc, Tỉnh Quảng Nam', 20547, 506),
(20548, 'Đại Hòa', 'xa', 'dai-hoa', 'Xã Đại Hòa', 'Đại Hòa, Đại Lộc, Quảng Nam', 'Xã Đại Hòa, Huyện Đại Lộc, Tỉnh Quảng Nam', 20548, 506),
(20551, 'Vĩnh Điện', 'phuong', 'vinh-dien', 'Phường Vĩnh Điện', 'Vĩnh Điện, Điện Bàn, Quảng Nam', 'Phường Vĩnh Điện, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20551, 507),
(20554, 'Điện Tiến', 'xa', 'dien-tien', 'Xã Điện Tiến', 'Điện Tiến, Điện Bàn, Quảng Nam', 'Xã Điện Tiến, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20554, 507),
(20557, 'Điện Hòa', 'xa', 'dien-hoa', 'Xã Điện Hòa', 'Điện Hòa, Điện Bàn, Quảng Nam', 'Xã Điện Hòa, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20557, 507),
(20560, 'Điện Thắng Bắc', 'xa', 'dien-thang-bac', 'Xã Điện Thắng Bắc', 'Điện Thắng Bắc, Điện Bàn, Quảng Nam', 'Xã Điện Thắng Bắc, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20560, 507),
(20561, 'Điện Thắng Trung', 'xa', 'dien-thang-trung', 'Xã Điện Thắng Trung', 'Điện Thắng Trung, Điện Bàn, Quảng Nam', 'Xã Điện Thắng Trung, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20561, 507),
(20562, 'Điện Thắng Nam', 'xa', 'dien-thang-nam', 'Xã Điện Thắng Nam', 'Điện Thắng Nam, Điện Bàn, Quảng Nam', 'Xã Điện Thắng Nam, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20562, 507),
(20563, 'Điện Ngọc', 'phuong', 'dien-ngoc', 'Phường Điện Ngọc', 'Điện Ngọc, Điện Bàn, Quảng Nam', 'Phường Điện Ngọc, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20563, 507),
(20566, 'Điện Hồng', 'xa', 'dien-hong', 'Xã Điện Hồng', 'Điện Hồng, Điện Bàn, Quảng Nam', 'Xã Điện Hồng, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20566, 507),
(20569, 'Điện Thọ', 'xa', 'dien-tho', 'Xã Điện Thọ', 'Điện Thọ, Điện Bàn, Quảng Nam', 'Xã Điện Thọ, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20569, 507),
(20572, 'Điện Phước', 'xa', 'dien-phuoc', 'Xã Điện Phước', 'Điện Phước, Điện Bàn, Quảng Nam', 'Xã Điện Phước, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20572, 507),
(20575, 'Điện An', 'phuong', 'dien-an', 'Phường Điện An', 'Điện An, Điện Bàn, Quảng Nam', 'Phường Điện An, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20575, 507),
(20578, 'Điện Nam Bắc', 'phuong', 'dien-nam-bac', 'Phường Điện Nam Bắc', 'Điện Nam Bắc, Điện Bàn, Quảng Nam', 'Phường Điện Nam Bắc, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20578, 507),
(20579, 'Điện Nam Trung', 'phuong', 'dien-nam-trung', 'Phường Điện Nam Trung', 'Điện Nam Trung, Điện Bàn, Quảng Nam', 'Phường Điện Nam Trung, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20579, 507),
(20580, 'Điện Nam Đông', 'phuong', 'dien-nam-dong', 'Phường Điện Nam Đông', 'Điện Nam Đông, Điện Bàn, Quảng Nam', 'Phường Điện Nam Đông, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20580, 507),
(20581, 'Điện Dương', 'phuong', 'dien-duong', 'Phường Điện Dương', 'Điện Dương, Điện Bàn, Quảng Nam', 'Phường Điện Dương, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20581, 507),
(20584, 'Điện Quang', 'xa', 'dien-quang', 'Xã Điện Quang', 'Điện Quang, Điện Bàn, Quảng Nam', 'Xã Điện Quang, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20584, 507),
(20587, 'Điện Trung', 'xa', 'dien-trung', 'Xã Điện Trung', 'Điện Trung, Điện Bàn, Quảng Nam', 'Xã Điện Trung, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20587, 507),
(20590, 'Điện Phong', 'xa', 'dien-phong', 'Xã Điện Phong', 'Điện Phong, Điện Bàn, Quảng Nam', 'Xã Điện Phong, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20590, 507),
(20593, 'Điện Minh', 'xa', 'dien-minh', 'Xã Điện Minh', 'Điện Minh, Điện Bàn, Quảng Nam', 'Xã Điện Minh, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20593, 507),
(20596, 'Điện Phương', 'xa', 'dien-phuong', 'Xã Điện Phương', 'Điện Phương, Điện Bàn, Quảng Nam', 'Xã Điện Phương, Thị xã Điện Bàn, Tỉnh Quảng Nam', 20596, 507),
(20599, 'Nam Phước', 'thi-tran', 'nam-phuoc', 'Thị trấn Nam Phước', 'Nam Phước, Duy Xuyên, Quảng Nam', 'Thị trấn Nam Phước, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20599, 508),
(20602, 'Duy Thu', 'xa', 'duy-thu', 'Xã Duy Thu', 'Duy Thu, Duy Xuyên, Quảng Nam', 'Xã Duy Thu, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20602, 508),
(20605, 'Duy Phú', 'xa', 'duy-phu', 'Xã Duy Phú', 'Duy Phú, Duy Xuyên, Quảng Nam', 'Xã Duy Phú, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20605, 508),
(20608, 'Duy Tân', 'xa', 'duy-tan', 'Xã Duy Tân', 'Duy Tân, Duy Xuyên, Quảng Nam', 'Xã Duy Tân, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20608, 508),
(20611, 'Duy Hòa', 'xa', 'duy-hoa', 'Xã Duy Hòa', 'Duy Hòa, Duy Xuyên, Quảng Nam', 'Xã Duy Hòa, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20611, 508),
(20614, 'Duy Châu', 'xa', 'duy-chau', 'Xã Duy Châu', 'Duy Châu, Duy Xuyên, Quảng Nam', 'Xã Duy Châu, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20614, 508),
(20617, 'Duy Trinh', 'xa', 'duy-trinh', 'Xã Duy Trinh', 'Duy Trinh, Duy Xuyên, Quảng Nam', 'Xã Duy Trinh, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20617, 508),
(20620, 'Duy Sơn', 'xa', 'duy-son', 'Xã Duy Sơn', 'Duy Sơn, Duy Xuyên, Quảng Nam', 'Xã Duy Sơn, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20620, 508),
(20623, 'Duy Trung', 'xa', 'duy-trung', 'Xã Duy Trung', 'Duy Trung, Duy Xuyên, Quảng Nam', 'Xã Duy Trung, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20623, 508),
(20626, 'Duy Phước', 'xa', 'duy-phuoc', 'Xã Duy Phước', 'Duy Phước, Duy Xuyên, Quảng Nam', 'Xã Duy Phước, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20626, 508),
(20629, 'Duy Thành', 'xa', 'duy-thanh', 'Xã Duy Thành', 'Duy Thành, Duy Xuyên, Quảng Nam', 'Xã Duy Thành, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20629, 508),
(20632, 'Duy Vinh', 'xa', 'duy-vinh', 'Xã Duy Vinh', 'Duy Vinh, Duy Xuyên, Quảng Nam', 'Xã Duy Vinh, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20632, 508),
(20635, 'Duy Nghĩa', 'xa', 'duy-nghia', 'Xã Duy Nghĩa', 'Duy Nghĩa, Duy Xuyên, Quảng Nam', 'Xã Duy Nghĩa, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20635, 508),
(20638, 'Duy Hải', 'xa', 'duy-hai', 'Xã Duy Hải', 'Duy Hải, Duy Xuyên, Quảng Nam', 'Xã Duy Hải, Huyện Duy Xuyên, Tỉnh Quảng Nam', 20638, 508),
(20641, 'Đông Phú', 'thi-tran', 'dong-phu', 'Thị trấn Đông Phú', 'Đông Phú, Quế Sơn, Quảng Nam', 'Thị trấn Đông Phú, Huyện Quế Sơn, Tỉnh Quảng Nam', 20641, 509),
(20644, 'Quế Xuân 1', 'xa', 'que-xuan-1', 'Xã Quế Xuân 1', 'Quế Xuân 1, Quế Sơn, Quảng Nam', 'Xã Quế Xuân 1, Huyện Quế Sơn, Tỉnh Quảng Nam', 20644, 509),
(20647, 'Quế Xuân 2', 'xa', 'que-xuan-2', 'Xã Quế Xuân 2', 'Quế Xuân 2, Quế Sơn, Quảng Nam', 'Xã Quế Xuân 2, Huyện Quế Sơn, Tỉnh Quảng Nam', 20647, 509),
(20650, 'Quế Phú', 'xa', 'que-phu', 'Xã Quế Phú', 'Quế Phú, Quế Sơn, Quảng Nam', 'Xã Quế Phú, Huyện Quế Sơn, Tỉnh Quảng Nam', 20650, 509),
(20651, 'Hương An', 'xa', 'huong-an', 'Xã Hương An', 'Hương An, Quế Sơn, Quảng Nam', 'Xã Hương An, Huyện Quế Sơn, Tỉnh Quảng Nam', 20651, 509),
(20653, 'Quế Cường', 'xa', 'que-cuong', 'Xã Quế Cường', 'Quế Cường, Quế Sơn, Quảng Nam', 'Xã Quế Cường, Huyện Quế Sơn, Tỉnh Quảng Nam', 20653, 509),
(20659, 'Quế Hiệp', 'xa', 'que-hiep', 'Xã Quế Hiệp', 'Quế Hiệp, Quế Sơn, Quảng Nam', 'Xã Quế Hiệp, Huyện Quế Sơn, Tỉnh Quảng Nam', 20659, 509),
(20662, 'Quế Thuận', 'xa', 'que-thuan', 'Xã Quế Thuận', 'Quế Thuận, Quế Sơn, Quảng Nam', 'Xã Quế Thuận, Huyện Quế Sơn, Tỉnh Quảng Nam', 20662, 509),
(20665, 'Phú Thọ', 'xa', 'phu-tho', 'Xã Phú Thọ', 'Phú Thọ, Quế Sơn, Quảng Nam', 'Xã Phú Thọ, Huyện Quế Sơn, Tỉnh Quảng Nam', 20665, 509),
(20677, 'Quế Long', 'xa', 'que-long', 'Xã Quế Long', 'Quế Long, Quế Sơn, Quảng Nam', 'Xã Quế Long, Huyện Quế Sơn, Tỉnh Quảng Nam', 20677, 509),
(20680, 'Quế Châu', 'xa', 'que-chau', 'Xã Quế Châu', 'Quế Châu, Quế Sơn, Quảng Nam', 'Xã Quế Châu, Huyện Quế Sơn, Tỉnh Quảng Nam', 20680, 509),
(20683, 'Quế Phong', 'xa', 'que-phong', 'Xã Quế Phong', 'Quế Phong, Quế Sơn, Quảng Nam', 'Xã Quế Phong, Huyện Quế Sơn, Tỉnh Quảng Nam', 20683, 509),
(20686, 'Quế An', 'xa', 'que-an', 'Xã Quế An', 'Quế An, Quế Sơn, Quảng Nam', 'Xã Quế An, Huyện Quế Sơn, Tỉnh Quảng Nam', 20686, 509),
(20689, 'Quế Minh', 'xa', 'que-minh', 'Xã Quế Minh', 'Quế Minh, Quế Sơn, Quảng Nam', 'Xã Quế Minh, Huyện Quế Sơn, Tỉnh Quảng Nam', 20689, 509),
(20695, 'Thạnh Mỹ', 'thi-tran', 'thanh-my', 'Thị trấn Thạnh Mỹ', 'Thạnh Mỹ, Nam Giang, Quảng Nam', 'Thị trấn Thạnh Mỹ, Huyện Nam Giang, Tỉnh Quảng Nam', 20695, 510),
(20698, 'Laêê', 'xa', 'laee', 'Xã Laêê', 'Laêê, Nam Giang, Quảng Nam', 'Xã Laêê, Huyện Nam Giang, Tỉnh Quảng Nam', 20698, 510),
(20699, 'Chơ Chun', 'xa', 'cho-chun', 'Xã Chơ Chun', 'Chơ Chun, Nam Giang, Quảng Nam', 'Xã Chơ Chun, Huyện Nam Giang, Tỉnh Quảng Nam', 20699, 510),
(20701, 'Zuôich', 'xa', 'zuoich', 'Xã Zuôich', 'Zuôich, Nam Giang, Quảng Nam', 'Xã Zuôich, Huyện Nam Giang, Tỉnh Quảng Nam', 20701, 510),
(20702, 'Tà Pơơ', 'xa', 'ta-poo', 'Xã Tà Pơơ', 'Tà Pơơ, Nam Giang, Quảng Nam', 'Xã Tà Pơơ, Huyện Nam Giang, Tỉnh Quảng Nam', 20702, 510),
(20704, 'La Dêê', 'xa', 'la-dee', 'Xã La Dêê', 'La Dêê, Nam Giang, Quảng Nam', 'Xã La Dêê, Huyện Nam Giang, Tỉnh Quảng Nam', 20704, 510),
(20705, 'Đắc Tôi', 'xa', 'dac-toi', 'Xã Đắc Tôi', 'Đắc Tôi, Nam Giang, Quảng Nam', 'Xã Đắc Tôi, Huyện Nam Giang, Tỉnh Quảng Nam', 20705, 510),
(20707, 'Chà Vàl', 'xa', 'cha-val', 'Xã Chà Vàl', 'Chà Vàl, Nam Giang, Quảng Nam', 'Xã Chà Vàl, Huyện Nam Giang, Tỉnh Quảng Nam', 20707, 510),
(20710, 'Tà Bhinh', 'xa', 'ta-bhinh', 'Xã Tà Bhinh', 'Tà Bhinh, Nam Giang, Quảng Nam', 'Xã Tà Bhinh, Huyện Nam Giang, Tỉnh Quảng Nam', 20710, 510),
(20713, 'Cà Dy', 'xa', 'ca-dy', 'Xã Cà Dy', 'Cà Dy, Nam Giang, Quảng Nam', 'Xã Cà Dy, Huyện Nam Giang, Tỉnh Quảng Nam', 20713, 510),
(20716, 'Đắc Pre', 'xa', 'dac-pre', 'Xã Đắc Pre', 'Đắc Pre, Nam Giang, Quảng Nam', 'Xã Đắc Pre, Huyện Nam Giang, Tỉnh Quảng Nam', 20716, 510),
(20719, 'Đắc Pring', 'xa', 'dac-pring', 'Xã Đắc Pring', 'Đắc Pring, Nam Giang, Quảng Nam', 'Xã Đắc Pring, Huyện Nam Giang, Tỉnh Quảng Nam', 20719, 510),
(20722, 'Khâm Đức', 'thi-tran', 'kham-duc', 'Thị trấn Khâm Đức', 'Khâm Đức, Phước Sơn, Quảng Nam', 'Thị trấn Khâm Đức, Huyện Phước Sơn, Tỉnh Quảng Nam', 20722, 511),
(20725, 'Phước Xuân', 'xa', 'phuoc-xuan', 'Xã Phước Xuân', 'Phước Xuân, Phước Sơn, Quảng Nam', 'Xã Phước Xuân, Huyện Phước Sơn, Tỉnh Quảng Nam', 20725, 511),
(20728, 'Phước Hiệp', 'xa', 'phuoc-hiep', 'Xã Phước Hiệp', 'Phước Hiệp, Phước Sơn, Quảng Nam', 'Xã Phước Hiệp, Huyện Phước Sơn, Tỉnh Quảng Nam', 20728, 511),
(20729, 'Phước Hoà', 'xa', 'phuoc-hoa', 'Xã Phước Hoà', 'Phước Hoà, Phước Sơn, Quảng Nam', 'Xã Phước Hoà, Huyện Phước Sơn, Tỉnh Quảng Nam', 20729, 511),
(20731, 'Phước Đức', 'xa', 'phuoc-duc', 'Xã Phước Đức', 'Phước Đức, Phước Sơn, Quảng Nam', 'Xã Phước Đức, Huyện Phước Sơn, Tỉnh Quảng Nam', 20731, 511),
(20734, 'Phước Năng', 'xa', 'phuoc-nang', 'Xã Phước Năng', 'Phước Năng, Phước Sơn, Quảng Nam', 'Xã Phước Năng, Huyện Phước Sơn, Tỉnh Quảng Nam', 20734, 511),
(20737, 'Phước Mỹ', 'xa', 'phuoc-my', 'Xã Phước Mỹ', 'Phước Mỹ, Phước Sơn, Quảng Nam', 'Xã Phước Mỹ, Huyện Phước Sơn, Tỉnh Quảng Nam', 20737, 511),
(20740, 'Phước Chánh', 'xa', 'phuoc-chanh', 'Xã Phước Chánh', 'Phước Chánh, Phước Sơn, Quảng Nam', 'Xã Phước Chánh, Huyện Phước Sơn, Tỉnh Quảng Nam', 20740, 511),
(20743, 'Phước Công', 'xa', 'phuoc-cong', 'Xã Phước Công', 'Phước Công, Phước Sơn, Quảng Nam', 'Xã Phước Công, Huyện Phước Sơn, Tỉnh Quảng Nam', 20743, 511),
(20746, 'Phước Kim', 'xa', 'phuoc-kim', 'Xã Phước Kim', 'Phước Kim, Phước Sơn, Quảng Nam', 'Xã Phước Kim, Huyện Phước Sơn, Tỉnh Quảng Nam', 20746, 511),
(20749, 'Phước Lộc', 'xa', 'phuoc-loc', 'Xã Phước Lộc', 'Phước Lộc, Phước Sơn, Quảng Nam', 'Xã Phước Lộc, Huyện Phước Sơn, Tỉnh Quảng Nam', 20749, 511),
(20752, 'Phước Thành', 'xa', 'phuoc-thanh', 'Xã Phước Thành', 'Phước Thành, Phước Sơn, Quảng Nam', 'Xã Phước Thành, Huyện Phước Sơn, Tỉnh Quảng Nam', 20752, 511),
(20755, 'Tân An', 'thi-tran', 'tan-an', 'Thị trấn Tân An', 'Tân An, Hiệp Đức, Quảng Nam', 'Thị trấn Tân An, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20755, 512),
(20758, 'Hiệp Hòa', 'xa', 'hiep-hoa', 'Xã Hiệp Hòa', 'Hiệp Hòa, Hiệp Đức, Quảng Nam', 'Xã Hiệp Hòa, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20758, 512),
(20761, 'Hiệp Thuận', 'xa', 'hiep-thuan', 'Xã Hiệp Thuận', 'Hiệp Thuận, Hiệp Đức, Quảng Nam', 'Xã Hiệp Thuận, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20761, 512),
(20764, 'Quế Thọ', 'xa', 'que-tho', 'Xã Quế Thọ', 'Quế Thọ, Hiệp Đức, Quảng Nam', 'Xã Quế Thọ, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20764, 512),
(20767, 'Bình Lâm', 'xa', 'binh-lam', 'Xã Bình Lâm', 'Bình Lâm, Hiệp Đức, Quảng Nam', 'Xã Bình Lâm, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20767, 512),
(20770, 'Sông Trà', 'xa', 'song-tra', 'Xã Sông Trà', 'Sông Trà, Hiệp Đức, Quảng Nam', 'Xã Sông Trà, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20770, 512),
(20773, 'Phước Trà', 'xa', 'phuoc-tra', 'Xã Phước Trà', 'Phước Trà, Hiệp Đức, Quảng Nam', 'Xã Phước Trà, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20773, 512),
(20776, 'Phước Gia', 'xa', 'phuoc-gia', 'Xã Phước Gia', 'Phước Gia, Hiệp Đức, Quảng Nam', 'Xã Phước Gia, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20776, 512),
(20779, 'Quế Bình', 'xa', 'que-binh', 'Xã Quế Bình', 'Quế Bình, Hiệp Đức, Quảng Nam', 'Xã Quế Bình, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20779, 512),
(20782, 'Quế Lưu', 'xa', 'que-luu', 'Xã Quế Lưu', 'Quế Lưu, Hiệp Đức, Quảng Nam', 'Xã Quế Lưu, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20782, 512),
(20785, 'Thăng Phước', 'xa', 'thang-phuoc', 'Xã Thăng Phước', 'Thăng Phước, Hiệp Đức, Quảng Nam', 'Xã Thăng Phước, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20785, 512),
(20788, 'Bình Sơn', 'xa', 'binh-son', 'Xã Bình Sơn', 'Bình Sơn, Hiệp Đức, Quảng Nam', 'Xã Bình Sơn, Huyện Hiệp Đức, Tỉnh Quảng Nam', 20788, 512),
(20791, 'Hà Lam', 'thi-tran', 'ha-lam', 'Thị trấn Hà Lam', 'Hà Lam, Thăng Bình, Quảng Nam', 'Thị trấn Hà Lam, Huyện Thăng Bình, Tỉnh Quảng Nam', 20791, 513),
(20794, 'Bình Dương', 'xa', 'binh-duong', 'Xã Bình Dương', 'Bình Dương, Thăng Bình, Quảng Nam', 'Xã Bình Dương, Huyện Thăng Bình, Tỉnh Quảng Nam', 20794, 513),
(20797, 'Bình Giang', 'xa', 'binh-giang', 'Xã Bình Giang', 'Bình Giang, Thăng Bình, Quảng Nam', 'Xã Bình Giang, Huyện Thăng Bình, Tỉnh Quảng Nam', 20797, 513),
(20800, 'Bình Nguyên', 'xa', 'binh-nguyen', 'Xã Bình Nguyên', 'Bình Nguyên, Thăng Bình, Quảng Nam', 'Xã Bình Nguyên, Huyện Thăng Bình, Tỉnh Quảng Nam', 20800, 513),
(20803, 'Bình Phục', 'xa', 'binh-phuc', 'Xã Bình Phục', 'Bình Phục, Thăng Bình, Quảng Nam', 'Xã Bình Phục, Huyện Thăng Bình, Tỉnh Quảng Nam', 20803, 513),
(20806, 'Bình Triều', 'xa', 'binh-trieu', 'Xã Bình Triều', 'Bình Triều, Thăng Bình, Quảng Nam', 'Xã Bình Triều, Huyện Thăng Bình, Tỉnh Quảng Nam', 20806, 513),
(20809, 'Bình Đào', 'xa', 'binh-dao', 'Xã Bình Đào', 'Bình Đào, Thăng Bình, Quảng Nam', 'Xã Bình Đào, Huyện Thăng Bình, Tỉnh Quảng Nam', 20809, 513),
(20812, 'Bình Minh', 'xa', 'binh-minh', 'Xã Bình Minh', 'Bình Minh, Thăng Bình, Quảng Nam', 'Xã Bình Minh, Huyện Thăng Bình, Tỉnh Quảng Nam', 20812, 513),
(20815, 'Bình Lãnh', 'xa', 'binh-lanh', 'Xã Bình Lãnh', 'Bình Lãnh, Thăng Bình, Quảng Nam', 'Xã Bình Lãnh, Huyện Thăng Bình, Tỉnh Quảng Nam', 20815, 513),
(20818, 'Bình Trị', 'xa', 'binh-tri', 'Xã Bình Trị', 'Bình Trị, Thăng Bình, Quảng Nam', 'Xã Bình Trị, Huyện Thăng Bình, Tỉnh Quảng Nam', 20818, 513),
(20821, 'Bình Định Bắc', 'xa', 'binh-dinh-bac', 'Xã Bình Định Bắc', 'Bình Định Bắc, Thăng Bình, Quảng Nam', 'Xã Bình Định Bắc, Huyện Thăng Bình, Tỉnh Quảng Nam', 20821, 513),
(20822, 'Bình Định Nam', 'xa', 'binh-dinh-nam', 'Xã Bình Định Nam', 'Bình Định Nam, Thăng Bình, Quảng Nam', 'Xã Bình Định Nam, Huyện Thăng Bình, Tỉnh Quảng Nam', 20822, 513),
(20824, 'Bình Quý', 'xa', 'binh-quy', 'Xã Bình Quý', 'Bình Quý, Thăng Bình, Quảng Nam', 'Xã Bình Quý, Huyện Thăng Bình, Tỉnh Quảng Nam', 20824, 513),
(20827, 'Bình Phú', 'xa', 'binh-phu', 'Xã Bình Phú', 'Bình Phú, Thăng Bình, Quảng Nam', 'Xã Bình Phú, Huyện Thăng Bình, Tỉnh Quảng Nam', 20827, 513),
(20830, 'Bình Chánh', 'xa', 'binh-chanh', 'Xã Bình Chánh', 'Bình Chánh, Thăng Bình, Quảng Nam', 'Xã Bình Chánh, Huyện Thăng Bình, Tỉnh Quảng Nam', 20830, 513),
(20833, 'Bình Tú', 'xa', 'binh-tu', 'Xã Bình Tú', 'Bình Tú, Thăng Bình, Quảng Nam', 'Xã Bình Tú, Huyện Thăng Bình, Tỉnh Quảng Nam', 20833, 513),
(20836, 'Bình Sa', 'xa', 'binh-sa', 'Xã Bình Sa', 'Bình Sa, Thăng Bình, Quảng Nam', 'Xã Bình Sa, Huyện Thăng Bình, Tỉnh Quảng Nam', 20836, 513),
(20839, 'Bình Hải', 'xa', 'binh-hai', 'Xã Bình Hải', 'Bình Hải, Thăng Bình, Quảng Nam', 'Xã Bình Hải, Huyện Thăng Bình, Tỉnh Quảng Nam', 20839, 513),
(20842, 'Bình Quế', 'xa', 'binh-que', 'Xã Bình Quế', 'Bình Quế, Thăng Bình, Quảng Nam', 'Xã Bình Quế, Huyện Thăng Bình, Tỉnh Quảng Nam', 20842, 513),
(20845, 'Bình An', 'xa', 'binh-an', 'Xã Bình An', 'Bình An, Thăng Bình, Quảng Nam', 'Xã Bình An, Huyện Thăng Bình, Tỉnh Quảng Nam', 20845, 513),
(20848, 'Bình Trung', 'xa', 'binh-trung', 'Xã Bình Trung', 'Bình Trung, Thăng Bình, Quảng Nam', 'Xã Bình Trung, Huyện Thăng Bình, Tỉnh Quảng Nam', 20848, 513),
(20851, 'Bình Nam', 'xa', 'binh-nam', 'Xã Bình Nam', 'Bình Nam, Thăng Bình, Quảng Nam', 'Xã Bình Nam, Huyện Thăng Bình, Tỉnh Quảng Nam', 20851, 513),
(20854, 'Tiên Kỳ', 'thi-tran', 'tien-ky', 'Thị trấn Tiên Kỳ', 'Tiên Kỳ, Tiên Phước, Quảng Nam', 'Thị trấn Tiên Kỳ, Huyện Tiên Phước, Tỉnh Quảng Nam', 20854, 514),
(20857, 'Tiên Sơn', 'xa', 'tien-son', 'Xã Tiên Sơn', 'Tiên Sơn, Tiên Phước, Quảng Nam', 'Xã Tiên Sơn, Huyện Tiên Phước, Tỉnh Quảng Nam', 20857, 514),
(20860, 'Tiên Hà', 'xa', 'tien-ha', 'Xã Tiên Hà', 'Tiên Hà, Tiên Phước, Quảng Nam', 'Xã Tiên Hà, Huyện Tiên Phước, Tỉnh Quảng Nam', 20860, 514),
(20863, 'Tiên Cẩm', 'xa', 'tien-cam', 'Xã Tiên Cẩm', 'Tiên Cẩm, Tiên Phước, Quảng Nam', 'Xã Tiên Cẩm, Huyện Tiên Phước, Tỉnh Quảng Nam', 20863, 514),
(20866, 'Tiên Châu', 'xa', 'tien-chau', 'Xã Tiên Châu', 'Tiên Châu, Tiên Phước, Quảng Nam', 'Xã Tiên Châu, Huyện Tiên Phước, Tỉnh Quảng Nam', 20866, 514),
(20869, 'Tiên Lãnh', 'xa', 'tien-lanh', 'Xã Tiên Lãnh', 'Tiên Lãnh, Tiên Phước, Quảng Nam', 'Xã Tiên Lãnh, Huyện Tiên Phước, Tỉnh Quảng Nam', 20869, 514),
(20872, 'Tiên Ngọc', 'xa', 'tien-ngoc', 'Xã Tiên Ngọc', 'Tiên Ngọc, Tiên Phước, Quảng Nam', 'Xã Tiên Ngọc, Huyện Tiên Phước, Tỉnh Quảng Nam', 20872, 514),
(20875, 'Tiên Hiệp', 'xa', 'tien-hiep', 'Xã Tiên Hiệp', 'Tiên Hiệp, Tiên Phước, Quảng Nam', 'Xã Tiên Hiệp, Huyện Tiên Phước, Tỉnh Quảng Nam', 20875, 514),
(20878, 'Tiên Cảnh', 'xa', 'tien-canh', 'Xã Tiên Cảnh', 'Tiên Cảnh, Tiên Phước, Quảng Nam', 'Xã Tiên Cảnh, Huyện Tiên Phước, Tỉnh Quảng Nam', 20878, 514),
(20881, 'Tiên Mỹ', 'xa', 'tien-my', 'Xã Tiên Mỹ', 'Tiên Mỹ, Tiên Phước, Quảng Nam', 'Xã Tiên Mỹ, Huyện Tiên Phước, Tỉnh Quảng Nam', 20881, 514),
(20884, 'Tiên Phong', 'xa', 'tien-phong', 'Xã Tiên Phong', 'Tiên Phong, Tiên Phước, Quảng Nam', 'Xã Tiên Phong, Huyện Tiên Phước, Tỉnh Quảng Nam', 20884, 514),
(20887, 'Tiên Thọ', 'xa', 'tien-tho', 'Xã Tiên Thọ', 'Tiên Thọ, Tiên Phước, Quảng Nam', 'Xã Tiên Thọ, Huyện Tiên Phước, Tỉnh Quảng Nam', 20887, 514),
(20890, 'Tiên An', 'xa', 'tien-an', 'Xã Tiên An', 'Tiên An, Tiên Phước, Quảng Nam', 'Xã Tiên An, Huyện Tiên Phước, Tỉnh Quảng Nam', 20890, 514),
(20893, 'Tiên Lộc', 'xa', 'tien-loc', 'Xã Tiên Lộc', 'Tiên Lộc, Tiên Phước, Quảng Nam', 'Xã Tiên Lộc, Huyện Tiên Phước, Tỉnh Quảng Nam', 20893, 514),
(20896, 'Tiên Lập', 'xa', 'tien-lap', 'Xã Tiên Lập', 'Tiên Lập, Tiên Phước, Quảng Nam', 'Xã Tiên Lập, Huyện Tiên Phước, Tỉnh Quảng Nam', 20896, 514),
(20899, 'Trà My', 'thi-tran', 'tra-my', 'Thị trấn Trà My', 'Trà My, Bắc Trà My, Quảng Nam', 'Thị trấn Trà My, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20899, 515),
(20900, 'Trà Sơn', 'xa', 'tra-son', 'Xã Trà Sơn', 'Trà Sơn, Bắc Trà My, Quảng Nam', 'Xã Trà Sơn, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20900, 515),
(20902, 'Trà Kót', 'xa', 'tra-kot', 'Xã Trà Kót', 'Trà Kót, Bắc Trà My, Quảng Nam', 'Xã Trà Kót, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20902, 515),
(20905, 'Trà Nú', 'xa', 'tra-nu', 'Xã Trà Nú', 'Trà Nú, Bắc Trà My, Quảng Nam', 'Xã Trà Nú, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20905, 515),
(20908, 'Trà Đông', 'xa', 'tra-dong', 'Xã Trà Đông', 'Trà Đông, Bắc Trà My, Quảng Nam', 'Xã Trà Đông, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20908, 515),
(20911, 'Trà Dương', 'xa', 'tra-duong', 'Xã Trà Dương', 'Trà Dương, Bắc Trà My, Quảng Nam', 'Xã Trà Dương, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20911, 515),
(20914, 'Trà Giang', 'xa', 'tra-giang', 'Xã Trà Giang', 'Trà Giang, Bắc Trà My, Quảng Nam', 'Xã Trà Giang, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20914, 515),
(20917, 'Trà Bui', 'xa', 'tra-bui', 'Xã Trà Bui', 'Trà Bui, Bắc Trà My, Quảng Nam', 'Xã Trà Bui, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20917, 515),
(20920, 'Trà Đốc', 'xa', 'tra-doc', 'Xã Trà Đốc', 'Trà Đốc, Bắc Trà My, Quảng Nam', 'Xã Trà Đốc, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20920, 515),
(20923, 'Trà Tân', 'xa', 'tra-tan', 'Xã Trà Tân', 'Trà Tân, Bắc Trà My, Quảng Nam', 'Xã Trà Tân, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20923, 515),
(20926, 'Trà Giác', 'xa', 'tra-giac', 'Xã Trà Giác', 'Trà Giác, Bắc Trà My, Quảng Nam', 'Xã Trà Giác, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20926, 515),
(20929, 'Trà Giáp', 'xa', 'tra-giap', 'Xã Trà Giáp', 'Trà Giáp, Bắc Trà My, Quảng Nam', 'Xã Trà Giáp, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20929, 515),
(20932, 'Trà Ka', 'xa', 'tra-ka', 'Xã Trà Ka', 'Trà Ka, Bắc Trà My, Quảng Nam', 'Xã Trà Ka, Huyện Bắc Trà My, Tỉnh Quảng Nam', 20932, 515),
(20935, 'Trà Leng', 'xa', 'tra-leng', 'Xã Trà Leng', 'Trà Leng, Nam Trà My, Quảng Nam', 'Xã Trà Leng, Huyện Nam Trà My, Tỉnh Quảng Nam', 20935, 516),
(20938, 'Trà Dơn', 'xa', 'tra-don', 'Xã Trà Dơn', 'Trà Dơn, Nam Trà My, Quảng Nam', 'Xã Trà Dơn, Huyện Nam Trà My, Tỉnh Quảng Nam', 20938, 516),
(20941, 'Trà Tập', 'xa', 'tra-tap', 'Xã Trà Tập', 'Trà Tập, Nam Trà My, Quảng Nam', 'Xã Trà Tập, Huyện Nam Trà My, Tỉnh Quảng Nam', 20941, 516),
(20944, 'Trà Mai', 'xa', 'tra-mai', 'Xã Trà Mai', 'Trà Mai, Nam Trà My, Quảng Nam', 'Xã Trà Mai, Huyện Nam Trà My, Tỉnh Quảng Nam', 20944, 516),
(20947, 'Trà Cang', 'xa', 'tra-cang', 'Xã Trà Cang', 'Trà Cang, Nam Trà My, Quảng Nam', 'Xã Trà Cang, Huyện Nam Trà My, Tỉnh Quảng Nam', 20947, 516),
(20950, 'Trà Linh', 'xa', 'tra-linh', 'Xã Trà Linh', 'Trà Linh, Nam Trà My, Quảng Nam', 'Xã Trà Linh, Huyện Nam Trà My, Tỉnh Quảng Nam', 20950, 516),
(20953, 'Trà Nam', 'xa', 'tra-nam', 'Xã Trà Nam', 'Trà Nam, Nam Trà My, Quảng Nam', 'Xã Trà Nam, Huyện Nam Trà My, Tỉnh Quảng Nam', 20953, 516),
(20956, 'Trà Don', 'xa', 'tra-don', 'Xã Trà Don', 'Trà Don, Nam Trà My, Quảng Nam', 'Xã Trà Don, Huyện Nam Trà My, Tỉnh Quảng Nam', 20956, 516),
(20959, 'Trà Vân', 'xa', 'tra-van', 'Xã Trà Vân', 'Trà Vân, Nam Trà My, Quảng Nam', 'Xã Trà Vân, Huyện Nam Trà My, Tỉnh Quảng Nam', 20959, 516),
(20962, 'Trà Vinh', 'xa', 'tra-vinh', 'Xã Trà Vinh', 'Trà Vinh, Nam Trà My, Quảng Nam', 'Xã Trà Vinh, Huyện Nam Trà My, Tỉnh Quảng Nam', 20962, 516),
(20965, 'Núi Thành', 'thi-tran', 'nui-thanh', 'Thị trấn Núi Thành', 'Núi Thành, Núi Thành, Quảng Nam', 'Thị trấn Núi Thành, Huyện Núi Thành, Tỉnh Quảng Nam', 20965, 517),
(20968, 'Tam Xuân I', 'xa', 'tam-xuan-i', 'Xã Tam Xuân I', 'Tam Xuân I, Núi Thành, Quảng Nam', 'Xã Tam Xuân I, Huyện Núi Thành, Tỉnh Quảng Nam', 20968, 517),
(20971, 'Tam Xuân II', 'xa', 'tam-xuan-ii', 'Xã Tam Xuân II', 'Tam Xuân II, Núi Thành, Quảng Nam', 'Xã Tam Xuân II, Huyện Núi Thành, Tỉnh Quảng Nam', 20971, 517),
(20974, 'Tam Tiến', 'xa', 'tam-tien', 'Xã Tam Tiến', 'Tam Tiến, Núi Thành, Quảng Nam', 'Xã Tam Tiến, Huyện Núi Thành, Tỉnh Quảng Nam', 20974, 517),
(20977, 'Tam Sơn', 'xa', 'tam-son', 'Xã Tam Sơn', 'Tam Sơn, Núi Thành, Quảng Nam', 'Xã Tam Sơn, Huyện Núi Thành, Tỉnh Quảng Nam', 20977, 517),
(20980, 'Tam Thạnh', 'xa', 'tam-thanh', 'Xã Tam Thạnh', 'Tam Thạnh, Núi Thành, Quảng Nam', 'Xã Tam Thạnh, Huyện Núi Thành, Tỉnh Quảng Nam', 20980, 517),
(20983, 'Tam Anh Bắc', 'xa', 'tam-anh-bac', 'Xã Tam Anh Bắc', 'Tam Anh Bắc, Núi Thành, Quảng Nam', 'Xã Tam Anh Bắc, Huyện Núi Thành, Tỉnh Quảng Nam', 20983, 517),
(20984, 'Tam Anh Nam', 'xa', 'tam-anh-nam', 'Xã Tam Anh Nam', 'Tam Anh Nam, Núi Thành, Quảng Nam', 'Xã Tam Anh Nam, Huyện Núi Thành, Tỉnh Quảng Nam', 20984, 517),
(20986, 'Tam Hòa', 'xa', 'tam-hoa', 'Xã Tam Hòa', 'Tam Hòa, Núi Thành, Quảng Nam', 'Xã Tam Hòa, Huyện Núi Thành, Tỉnh Quảng Nam', 20986, 517),
(20989, 'Tam Hiệp', 'xa', 'tam-hiep', 'Xã Tam Hiệp', 'Tam Hiệp, Núi Thành, Quảng Nam', 'Xã Tam Hiệp, Huyện Núi Thành, Tỉnh Quảng Nam', 20989, 517),
(20992, 'Tam Hải', 'xa', 'tam-hai', 'Xã Tam Hải', 'Tam Hải, Núi Thành, Quảng Nam', 'Xã Tam Hải, Huyện Núi Thành, Tỉnh Quảng Nam', 20992, 517),
(20995, 'Tam Giang', 'xa', 'tam-giang', 'Xã Tam Giang', 'Tam Giang, Núi Thành, Quảng Nam', 'Xã Tam Giang, Huyện Núi Thành, Tỉnh Quảng Nam', 20995, 517),
(20998, 'Tam Quang', 'xa', 'tam-quang', 'Xã Tam Quang', 'Tam Quang, Núi Thành, Quảng Nam', 'Xã Tam Quang, Huyện Núi Thành, Tỉnh Quảng Nam', 20998, 517),
(21001, 'Tam Nghĩa', 'xa', 'tam-nghia', 'Xã Tam Nghĩa', 'Tam Nghĩa, Núi Thành, Quảng Nam', 'Xã Tam Nghĩa, Huyện Núi Thành, Tỉnh Quảng Nam', 21001, 517),
(21004, 'Tam Mỹ Tây', 'xa', 'tam-my-tay', 'Xã Tam Mỹ Tây', 'Tam Mỹ Tây, Núi Thành, Quảng Nam', 'Xã Tam Mỹ Tây, Huyện Núi Thành, Tỉnh Quảng Nam', 21004, 517),
(21005, 'Tam Mỹ Đông', 'xa', 'tam-my-dong', 'Xã Tam Mỹ Đông', 'Tam Mỹ Đông, Núi Thành, Quảng Nam', 'Xã Tam Mỹ Đông, Huyện Núi Thành, Tỉnh Quảng Nam', 21005, 517),
(21007, 'Tam Trà', 'xa', 'tam-tra', 'Xã Tam Trà', 'Tam Trà, Núi Thành, Quảng Nam', 'Xã Tam Trà, Huyện Núi Thành, Tỉnh Quảng Nam', 21007, 517),
(20364, 'Phú Thịnh', 'thi-tran', 'phu-thinh', 'Thị trấn Phú Thịnh', 'Phú Thịnh, Phú Ninh, Quảng Nam', 'Thị trấn Phú Thịnh, Huyện Phú Ninh, Tỉnh Quảng Nam', 20364, 518),
(20365, 'Tam Thành', 'xa', 'tam-thanh', 'Xã Tam Thành', 'Tam Thành, Phú Ninh, Quảng Nam', 'Xã Tam Thành, Huyện Phú Ninh, Tỉnh Quảng Nam', 20365, 518),
(20368, 'Tam An', 'xa', 'tam-an', 'Xã Tam An', 'Tam An, Phú Ninh, Quảng Nam', 'Xã Tam An, Huyện Phú Ninh, Tỉnh Quảng Nam', 20368, 518),
(20374, 'Tam Đàn', 'xa', 'tam-dan', 'Xã Tam Đàn', 'Tam Đàn, Phú Ninh, Quảng Nam', 'Xã Tam Đàn, Huyện Phú Ninh, Tỉnh Quảng Nam', 20374, 518),
(20377, 'Tam Lộc', 'xa', 'tam-loc', 'Xã Tam Lộc', 'Tam Lộc, Phú Ninh, Quảng Nam', 'Xã Tam Lộc, Huyện Phú Ninh, Tỉnh Quảng Nam', 20377, 518),
(20380, 'Tam Phước', 'xa', 'tam-phuoc', 'Xã Tam Phước', 'Tam Phước, Phú Ninh, Quảng Nam', 'Xã Tam Phước, Huyện Phú Ninh, Tỉnh Quảng Nam', 20380, 518),
(20383, 'Tam Vinh', 'xa', 'tam-vinh', 'Xã Tam Vinh', 'Tam Vinh, Phú Ninh, Quảng Nam', 'Xã Tam Vinh, Huyện Phú Ninh, Tỉnh Quảng Nam', 20383, 518),
(20386, 'Tam Thái', 'xa', 'tam-thai', 'Xã Tam Thái', 'Tam Thái, Phú Ninh, Quảng Nam', 'Xã Tam Thái, Huyện Phú Ninh, Tỉnh Quảng Nam', 20386, 518),
(20387, 'Tam Đại', 'xa', 'tam-dai', 'Xã Tam Đại', 'Tam Đại, Phú Ninh, Quảng Nam', 'Xã Tam Đại, Huyện Phú Ninh, Tỉnh Quảng Nam', 20387, 518),
(20392, 'Tam Dân', 'xa', 'tam-dan', 'Xã Tam Dân', 'Tam Dân, Phú Ninh, Quảng Nam', 'Xã Tam Dân, Huyện Phú Ninh, Tỉnh Quảng Nam', 20392, 518),
(20395, 'Tam Lãnh', 'xa', 'tam-lanh', 'Xã Tam Lãnh', 'Tam Lãnh, Phú Ninh, Quảng Nam', 'Xã Tam Lãnh, Huyện Phú Ninh, Tỉnh Quảng Nam', 20395, 518),
(20656, 'Quế Trung', 'xa', 'que-trung', 'Xã Quế Trung', 'Quế Trung, Nông Sơn, Quảng Nam', 'Xã Quế Trung, Huyện Nông Sơn, Tỉnh Quảng Nam', 20656, 519),
(20668, 'Quế Ninh', 'xa', 'que-ninh', 'Xã Quế Ninh', 'Quế Ninh, Nông Sơn, Quảng Nam', 'Xã Quế Ninh, Huyện Nông Sơn, Tỉnh Quảng Nam', 20668, 519),
(20669, 'Phước Ninh', 'xa', 'phuoc-ninh', 'Xã Phước Ninh', 'Phước Ninh, Nông Sơn, Quảng Nam', 'Xã Phước Ninh, Huyện Nông Sơn, Tỉnh Quảng Nam', 20669, 519),
(20671, 'Quế Lộc', 'xa', 'que-loc', 'Xã Quế Lộc', 'Quế Lộc, Nông Sơn, Quảng Nam', 'Xã Quế Lộc, Huyện Nông Sơn, Tỉnh Quảng Nam', 20671, 519),
(20672, 'Sơn Viên', 'xa', 'son-vien', 'Xã Sơn Viên', 'Sơn Viên, Nông Sơn, Quảng Nam', 'Xã Sơn Viên, Huyện Nông Sơn, Tỉnh Quảng Nam', 20672, 519),
(20674, 'Quế Phước', 'xa', 'que-phuoc', 'Xã Quế Phước', 'Quế Phước, Nông Sơn, Quảng Nam', 'Xã Quế Phước, Huyện Nông Sơn, Tỉnh Quảng Nam', 20674, 519),
(20692, 'Quế Lâm', 'xa', 'que-lam', 'Xã Quế Lâm', 'Quế Lâm, Nông Sơn, Quảng Nam', 'Xã Quế Lâm, Huyện Nông Sơn, Tỉnh Quảng Nam', 20692, 519);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baiviet_id_taikhoan_foreign` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluanbaiviet_id_baiviet_foreign` (`id_baiviet`),
  ADD KEY `binhluanbaiviet_id_taikhoan_foreign` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiethoadon_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `chitiethoadon_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietsanpham_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id_loaisp_foreign` (`id_loaisp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taikhoan_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_id_taikhoan_foreign` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  ADD CONSTRAINT `binhluanbaiviet_id_baiviet_foreign` FOREIGN KEY (`id_baiviet`) REFERENCES `baiviet` (`id`),
  ADD CONSTRAINT `binhluanbaiviet_id_taikhoan_foreign` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`),
  ADD CONSTRAINT `chitiethoadon_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_id_loaisp_foreign` FOREIGN KEY (`id_loaisp`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
