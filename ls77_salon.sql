-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 09:59 PM
-- Server version: 10.6.12-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ls77_salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departement_id` varchar(255) NOT NULL,
  `articles_title_ar` varchar(255) DEFAULT NULL,
  `articles_title_en` varchar(255) DEFAULT NULL,
  `articles_subject_ar` text DEFAULT NULL,
  `articles_subject_en` text DEFAULT NULL,
  `articles_subject_ar2` text DEFAULT NULL,
  `articles_subject_en2` text DEFAULT NULL,
  `articles_isactive` varchar(255) NOT NULL DEFAULT '1',
  `articles_image` varchar(255) DEFAULT NULL,
  `articles_date` varchar(255) DEFAULT NULL,
  `articles_image2` varchar(255) DEFAULT NULL,
  `articles_image3` varchar(255) DEFAULT NULL,
  `articles_image4` varchar(255) DEFAULT NULL,
  `articles_address_ar` varchar(255) DEFAULT NULL,
  `articles_address_en` varchar(255) DEFAULT NULL,
  `articles_rate` varchar(255) DEFAULT NULL,
  `articles_map` varchar(255) DEFAULT NULL,
  `articles_keyword` varchar(255) DEFAULT NULL,
  `articles_desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `offer_period` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `departement_id`, `articles_title_ar`, `articles_title_en`, `articles_subject_ar`, `articles_subject_en`, `articles_subject_ar2`, `articles_subject_en2`, `articles_isactive`, `articles_image`, `articles_date`, `articles_image2`, `articles_image3`, `articles_image4`, `articles_address_ar`, `articles_address_en`, `articles_rate`, `articles_map`, `articles_keyword`, `articles_desc`, `created_at`, `updated_at`, `price`, `offer_period`) VALUES
(1, '1', 'مرحبا', 'Welcome', 'استرخِ وانغمس في تجربة الجمال الفاخرة معنا .', 'Relax and indulge in a luxurious beauty experience with us', '', '', 'active', '1673193317What-to-look-for-when-choosing-a-hair-salon-1000x667.jpg', '2022,24th Dec,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 20:30:31', '2023-03-09 06:04:17', NULL, NULL),
(2, '1', 'مرحبا', 'Welcome', 'دع فريق الخبراء في صالون الأسبا ينشطون حواسك ويستردون لك الحيوية والنشاط.', 'Let the expert team of the spa salon invigorate your senses and restore vitality and vitality.', '', '', 'active', '167313593102.jpg', '2022,24th Dec,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 20:40:14', '2023-03-09 06:05:34', NULL, NULL),
(3, '1', 'مرحبا', 'Welcome', 'امنح نفسك العناية الفاخرة التي تستحقها', 'Give yourself the luxurious care you deserve', '', '', 'active', '1673378555beauty-parlor-stroke.jpg', '2022,24th Dec,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 20:59:46', '2023-03-09 06:06:19', NULL, NULL),
(4, '2', 'نبذ عنا', 'Our Story', 'نحن متحمسون لمساعدة عملائنا على تحقيق تجربة الاسترخاء القصوى. تم تصميم مجموعتنا من خدمات التدليك وعلاجات تنظيف البشرة وعروض العافية الأخرى لمساعدتك على الهروب من ضغوط الحياة اليومية والعثور على السلام والهدوء.      <br />\r\n      <br />\r\nيستخدم فريقنا من المعالجين ذوي الخبرة والمهارة العالية فقط أفضل المنتجات والتقنيات لتزويدك بتجربة سبا مخصصة وممتعة. سواء كنت تبحث عن تدليك للأنسجة العميقة لتخفيف توتر العضلات أو الوجه الفاخر لتجديد شباب بشرتك ، لدينا شيء للجميع.', 'we are passionate about helping our clients achieve the ultimate relaxation experience. Our range of massage services, skin cleansing treatments, and other wellness offerings are designed to help you escape the stress of everyday life and find peace and tranquility.      <br />\r\n      <br />\r\nOur team of experienced and highly skilled therapists use only the finest products and techniques to provide you with a personalized and indulgent spa experience. Whether you are looking for a deep tissue massage to relieve muscle tension or a luxurious facial to rejuvenate your skin, we have something for everyone.', '', '', 'active', '1678356039أسماء-ألوان-صبغات-الشعر-11.jpg', '2022,24th Dec,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 21:29:51', '2023-03-09 06:01:27', NULL, NULL),
(12, '7', 'تونر الوجه بماء الورد', 'Rose Water Facial Toner', 'تونر الوجه بماء الورد - تونر الوجه بماء الورد هو وسيلة فاخرة لترطيب البشرة وتجديدها. مصنوع من بتلات الورد النقية 100٪ ، يساعد هذا التونر اللطيف على تهدئة وتوازن مستويات الأس الهيدروجيني لبشرتك ، مما يجعل بشرتك تبدو متألقة وشعورًا بالانتعاش. استخدميه بعد التنظيف لحبس الرطوبة وتحضير بشرتك لبقية روتين العناية بالبشرة.', 'Rose Water Facial Toner - Our Rose Water Facial Toner is a luxurious way to hydrate and refresh your skin. Made from 100% pure rose petals, this gentle toner helps to soothe and balance your skin&#039;s pH levels, leaving your complexion looking radiant and feeling refreshed. Use after cleansing to lock in moisture and prepare your skin for the rest of your skincare routine.', '', '', 'inactive', '1678346672وجة وماء.png', '2023,01st Jan,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 18:39:15', '2023-03-09 03:24:32', '30', NULL),
(13, '7', 'زيت اللافندر الأساسي', 'Lavender Essential Oil', 'زيت اللافندر الأساسي - زيت اللافندر الأساسي لدينا هو إضافة متعددة الاستخدامات ومهدئة لأي روتين للعناية الذاتية. يشتهر زيت اللافندر بخصائصه المهدئة والاسترخاء ، وهو مثالي لتعزيز النوم المريح وتقليل التوتر وتخفيف توتر العضلات. أضف بضع قطرات إلى حمامك أو استخدمه كزيت للتدليك أو استنشق ببساطة للحصول على تجربة علاج عطري مهدئة.', 'Lavender Essential Oil - Our Lavender Essential Oil is a versatile and soothing addition to any self-care routine. Known for its calming and relaxing properties, lavender oil is perfect for promoting restful sleep, reducing stress, and easing muscle tension. Add a few drops to your bath, use as a massage oil, or simply inhale for a calming aromatherapy experience.\\', '', '', 'inactive', '1678310342DailySkinCare_DryNormalSkin_500x.webp', '2023,01st Jan,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 18:42:34', '2023-03-08 17:19:02', '30', NULL),
(14, '7', 'اسكرب الجسم', 'Body Scrub', 'مقشر الجسم - مقشر الجسم عبارة عن مزيج من مكونات التقشير مثل السكر أو الملح أو القهوة المطحونة ، والتي تستخدم لإزالة خلايا الجلد الميتة وترك البشرة ناعمة وملساء. غالبًا ما يتم غمر مقشرات الجسم بالزيوت والعطور لتجربة فاخرة.', 'Body Scrub - A body scrub is a mixture of exfoliating ingredients such as sugar, salt or coffee grounds, which are used to remove dead skin cells and leave the skin feeling soft and smooth. Body scrubs are often infused with oils and fragrances for a luxurious experience.', '', '', 'active', '1678346701كريم-صنفره-بوبانا-مقشر-للجسم-والوجه-بالمشمش-bobana-body-scrub-01649585694.webp', '2023,01st Jan,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 18:43:27', '2023-03-09 03:25:01', '10', NULL),
(15, '7', 'كريم للاقدام', 'Foot Soak', 'نقع القدم - نقع القدم هو منتج يستخدم لتهدئة واسترخاء القدمين المتعبة والألم. تحتوي على مكونات مثل ملح إبسوم وزيت شجرة الشاي وزيت النعناع ، مما يساعد على تقليل الالتهاب والقضاء على الرائحة وترطيب البشرة.', 'Foot Soak - A foot soak is a product used to soothe and relax tired and achy feet. They contain ingredients like Epsom salt, tea tree oil, and peppermint oil, which help to reduce inflammation, eliminate odor, and moisturize the skin.', '', '', 'active', '1678346733كريم للاقدام.jpg', '2023,01st Jan,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 18:44:45', '2023-03-09 03:25:33', '10', NULL),
(16, '8', 'مساج التخسيس و تكسير الدهون', 'Slimming Massage', 'قم بتحويل جسمك من خلال تدليك التخسيس المنشط وعلاج تكسير الدهون. يستخدم المعالجون المهرة لدينا تقنيات متقدمة لاستهداف الدهون العنيدة والسيلوليت ، مما يجعلك تتمتع بمظهر متناغم ومنحوت. استمتع بجلسة مساج تنحيف لمدة 90 دقيقة وعلاج تكسير الدهون مقابل 300 درهم فقط. احجز موعدك الآن واتخذ الخطوة الأولى نحو تحقيق أهداف جسمك من خلال خدمة السبا المتميزة لدينا.', 'Transform your body with our invigorating slimming massage and fat-breaking therapy. Our skilled therapists use advanced techniques to target stubborn fat and cellulite, leaving you with a toned and sculpted appearance. Enjoy a 90-minute slimming massage and fat-breaking therapy for only 300 dirhams. Book your appointment now and take the first step towards achieving your body goals with our premium spa service.', '', '', 'active', '1678339437مساج التخسيس.jpg', '2023,04th Jan,(Wed) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-04 20:51:19', '2023-03-09 01:23:57', '300', NULL),
(17, '8', 'مساج استرخاء', 'Relaxing', 'انغمس في الاسترخاء المطلق مع مساج الاسترخاء الممتاز لمدة ساعة واحدة. سيستخدم المعالجون المهرة لدينا مجموعة من الأساليب اللطيفة لتهدئة عضلاتك ، والتخلص من التوتر وتجعلك تشعر بالانتعاش والتجدد. استمتع بتجربة السبا الفاخرة مقابل 150 درهمًا فقط. احجز موعدك الآن واسترخ بعيدًا عن ضغوط الحياة اليومية من خلال خدمة السبا المتميزة.', 'Indulge in the ultimate relaxation with our premium one-hour relaxing massage. Our skilled therapists will use a combination of gentle techniques to soothe your muscles, release tension and leave you feeling refreshed and rejuvenated. Enjoy our luxurious spa experience for only 150 dirhams. Book your appointment now and unwind from the stress of everyday life with our premium spa service.', '', '', 'active', '1678339534مساج الاستراخاء.jpg', '2023,04th Jan,(Wed) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-04 20:54:08', '2023-03-09 01:25:34', '150', NULL),
(18, '9', 'تنظيف البشره    ( فيشل)', 'Facial', 'حول بشرتك من خلال خدمة تنظيف الوجه المجددة للحيوية. في 60 دقيقة فقط ، سنقوم بتدليل بشرتك بتقنياتنا الخبيرة ومنتجاتنا عالية الجودة ، مما يمنحك بشرة متألقة ومنتعشة. سعرنا المعقول الذي يبلغ 100 درهم فقط يعني أنه يمكنك تدليل نفسك بهذه التجربة الفاخرة دون كسر البنك. قولي وداعًا للبشرة الباهتة والمتعبة ومرحبًا بتوهج أكثر إشراقًا وشبابًا من خلال خدمة تنظيف الوجه لدينا.', 'Transform your skin with our rejuvenating facial cleansing service. In just 60 minutes, we&#039;ll pamper your skin with our expert techniques and high-quality products, leaving you with a radiant and refreshed complexion. Our affordable price of just 100 dirhams means you can treat yourself to this luxurious experience without breaking the bank. Say goodbye to dull, tired skin and hello to a brighter, more youthful glow with our facial cleaning service.', '', '', 'active', '1678309427500.jpg', '2023,04th Jan,(Wed) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-04 20:56:47', '2023-03-09 02:05:20', '100', NULL),
(19, '9', 'اسكراب الجسم', 'Full Body Scraping', 'انغمس في تجربة تقشير الجسم التي ستجعلك تشعر بالانتعاش والتجدد. سيستخدم المعالجون الخبراء لدينا تقنيات تقشير لطيفة وفعالة لإزالة خلايا الجلد الميتة والكشف عن بشرة أكثر نعومة ونعومة. في 45 دقيقة فقط ، ستتمتع بالتدليل من الرأس إلى أخمص القدمين ، مما يجعلك تشعر بالحيوية والانتعاش. وبسعرنا المعقول الذي يبلغ 100 درهم فقط ، يمكنك تدليل نفسك بهذه التجربة الفاخرة دون كسر البنك. احجز جلسة تقشير الجسم الآن ودعنا نساعدك في الكشف عن بشرتك المتوهجة.', 'Indulge in a blissful body scrub experience that will leave you feeling refreshed and rejuvenated. Our expert therapists will use gentle yet effective exfoliation techniques to remove dead skin cells and reveal smoother, softer skin. In just 45 minutes, you&#039;ll be pampered from head to toe, leaving you feeling revitalized and refreshed. And with our affordable price of just 100 dirhams, you can treat yourself to this luxurious experience without breaking the bank. Book your body scrub session now and let us help you reveal your glowing skin.', '', '', 'active', '1678342002اسكراب للجسم.jpg', '2023,04th Jan,(Wed) ', NULL, NULL, NULL, NULL, NULL, 'inactive', NULL, NULL, NULL, '2023-01-04 21:03:48', '2023-03-09 02:06:42', '100', NULL),
(22, '10', 'باقة إحسان  ( اليومية )', 'Ihsan package (daily)', 'اكتشف باقة إحسان اليومية - برنامج رعاية حصري لكبار السن وأصحاب الهمم ،    <br />\r\nتقديم باقة إحسان اليومية - برنامج عافية شامل لكبار السن وأصحاب الهمم ، مصمم لتزويدهم بالرعاية والاهتمام الذي يستحقونه. ، نتفهم أن الشيخوخة والإعاقات يمكن أن تؤثر سلبًا على الصحة الجسدية والعقلية للفرد ، ولهذا السبب قمنا بإنشاء هذه الحزمة الحصرية لتلبية الاحتياجات الفريدة لأفراد مجتمعنا من كبار السن والمعوقين.   <br />\r\n التفاصيل:   <br />\r\n&bull; باقة إحسان اليومية: برنامج مدته شهر بسعر 3800 درهم ، يهدف إلى تعزيز الصحة والرفاهية لكبار السن وأصحاب الهمم.   <br />\r\n&bull; شاي مرمم الانسجة : مزيج شاي قوي يمكن إضافته إلى العبوة لتعزيز تجديد الأنسجة وتسريع الشفاء لمدة ساعة 60 درهم .   <br />\r\n&bull; ساعة تدليك خاصة: مقابل 180 درهمًا إضافيًا  لمدة ساعة، يمكن لعملائنا الاستمتاع بجلسة تدليك خاصة مع معالجينا المهرة لتهدئة عضلاتهم والتخلص من التوتر.   <br />\r\n&bull; كمادات الأعشاب: يمكن إضافة جلسة ضواغط الأعشاب لمدة ساعة إلى الحزمة مقابل 200 درهم لمدة ساعة لتوفير مزيد من الاسترخاء والتجديد.   <br />\r\nجدول الحزمة: يضمن جدول الحزم المصمم بعناية حصول عملائنا على أفضل رعاية واهتمام ممكنين على مدار الأسبوع. إليك ما يبدو عليه جدولنا الأسبوعي:   <br />\r\nالاثنين:   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\nيوم الثلاثاء:   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\nالأربعاء:   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\nيوم الخميس:   <br />\r\n&bull; شاي علاجي  &bull; كمادات عشبية  &bull; شاي علاجي  &bull; كمادات عشبية   <br />\r\n&bull; شاي علاجي  &bull; كمادات عشبية  &bull; شاي علاجي  &bull; كمادات عشبية   <br />\r\nجمعة:   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\nالسبت:   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\n&bull; شاي علاجي  &bull; تدليك خاص  &bull; شاي علاجي  &bull; تدليك خاص   <br />\r\nعدد الجلسات في الأسبوع: يمكن لعملائنا الاستمتاع بالعدد التالي من الجلسات في الأسبوع:   <br />\r\n&bull; مساج خاص: 26   <br />\r\n&bull; كمادات عشبية: 4   <br />\r\n&bull; الشاي العلاجي(شاي مرمم الانسجة) : 30   <br />\r\nلا تدع العمر أو الإعاقة تحد من قدرتك على الاستمتاع بحياة صحية ومرضية. اشترك في باقة إحسان اليومية اليوم واختبر مزايا رعاية واهتمام خبرائنا.', 'Introducing Ihsan Daily Package &ndash; a comprehensive wellness program for the elderly and people of determination, designed to provide them with the care and attention they deserve.   <br />\r\nAt Ihsan, we understand that aging and disabilities can take a toll on one&#039;s physical and mental health, which is why we have created this exclusive package to cater to the unique needs of our elderly and disabled community members.   <br />\r\nPackage Details:   <br />\r\n&bull;	Ihsan Daily Package: A month-long program priced at 3800 dirhams, aimed at promoting health and well-being in our valued seniors and people of determination.   <br />\r\n&bull;	 Therapeutic tea: A potent tea blend that can be added to the package to promote tissue regeneration and speed up healing. 60 dirhams for 1 Hour   <br />\r\n&bull;	Private Massage Hour: For an additional 180 dirhams for 1 hour, our clients can enjoy a personalized massage session with our skilled therapists to soothe their muscles and release tension.   <br />\r\n&bull;	Herbal Compressors: An hour-long session of herbal compressors can be added to the package for 200 dirhams to provide additional relaxation and rejuvenation.   <br />\r\nPackage Schedule: Our carefully designed package schedule ensures that our clients receive the best possible care and attention throughout the week. Here&#039;s what our weekly schedule looks like:   <br />\r\nMonday:   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\nTuesday:   <br />\r\n&bull;	Therapeutic tea  	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\nWednesday:   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\nThursday:   <br />\r\n&bull;	Therapeutic tea  &bull;	Herbal compresses  &bull;	Therapeutic tea  &bull;	Herbal compresses   <br />\r\n&bull;	Therapeutic tea  &bull;	Herbal compresses  &bull;	Therapeutic tea  &bull;	Herbal compresses   <br />\r\nFriday:   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\nSaturday:   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\n&bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE  &bull;	Therapeutic tea  &bull;	SPECIAL MASSAGE   <br />\r\nNumber of Sessions Per Week: Our clients can enjoy the following number of sessions per week:   <br />\r\n&bull;	Special Massage: 26   <br />\r\n&bull;	Herbal Compresses: 4   <br />\r\n&bull;	Therapeutic Tea: 30   <br />\r\nDon&#039;t let age or disabilities limit your ability to enjoy a healthy and fulfilling life. Sign up for Ihsan Daily Package today and experience the benefits of our expert care and attention.', '', '', 'active', '1678253732pexels-lespa-số-về-điều-trị-mụn-nám-sẹo-rỗ-5042618.jpg', '2023,04th Jan,(Wed) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 21:35:33', '2023-03-08 15:31:42', '3800', '1'),
(23, '3', 'عرض على باقة إحسان  ( اليومية )', 'offer Package Ihssan daily', 'ادخل إلى عالم من الرعاية الحصرية والتدليل مع باقة إحسان اليومية - برنامج صحي شامل مصمم لتلبية احتياجات كبار السن وأصحاب الهمم. في إحسان ، ندرك أن الشيخوخة والإعاقات يمكن أن يكون لها تأثير كبير على الصحة الجسدية والعقلية للفرد ، ولهذا السبب قمنا بإنشاء هذه الحزمة لتعزيز الصحة والرفاهية والاسترخاء. التفاصيل هنا: <br />\r\n1. باقة إحسان اليومية: استمتع ببرنامج مدته شهر يركز على تقديم رعاية شاملة لكبار السن وأصحاب الهمم ، وكل ذلك بسعر مناسب يبلغ 3800 درهم إماراتي. <br />\r\n2. شاي إصلاح الأنسجة: يساعد هذا المزيج القوي من الشاي على تعزيز تجديد الأنسجة وتسريع الشفاء. أضفه إلى الزجاجة مقابل 60 درهمًا إضافيًا واستمتع بخصائصه العلاجية لمدة تصل إلى ساعة. <br />\r\n3. جلسة مساج خاص لمدة ساعة: دلل نفسك بساعة من الاسترخاء التام مع معالجينا الماهرين في التدليك. مقابل 180 درهمًا إضافيًا ، يمكنك الاستمتاع بتدليك خاص يهدئ عضلاتك ويخفف التوتر. <br />\r\nولكن انتظر هناك المزيد! لفترة محدودة فقط ، استمتع بباقتنا الحصرية لمدة شهرين مقابل 6000 درهم فقط. هذا صحيح - ستحصل على جميع مزايا باقة Ehsan اليومية وشاي إصلاح الأنسجة والتدليك الخاص لمدة شهرين كاملين ، وكل ذلك بسعر مخفض. <br />\r\nاكتشف باقة إحسان اليومية وجرب مزايا الرعاية الحصرية والتدليل اليوم. فريق المحترفين لدينا مكرس لتزويدك بأعلى مستوى من الرعاية والاهتمام ، لذلك يمكنك التأكد من أنك في أيد أمينة. اتصل بنا الآن لمعرفة المزيد وحجز باقتك اليوم!', 'Step into a world of exclusive care and pampering with the Ihsan Daily Package - an all-encompassing wellness program designed to cater to the needs of the elderly and people of determination. At Ihsan, we understand that aging and disabilities can have a significant impact on one&#039;s physical and mental health, which is why we&#039;ve created this package to promote health, well-being, and relaxation. Here are the details: <br />\r\n1.	Ehsan Daily Package: Enjoy a month-long program that focuses on providing comprehensive care to the elderly and people of determination, all at an affordable price of AED 3800. <br />\r\n2.	Tissue Repair Tea: This powerful tea mixture helps promote tissue regeneration and accelerate healing. Add it to your bottle for an additional AED 60 and experience its healing properties for up to an hour. <br />\r\n3.	One Hour Private Massage: Treat yourself to an hour of pure relaxation with our skilled massage therapists. For an additional AED 180, you can enjoy a private massage that soothes your muscles and releases tension. <br />\r\nBut wait, there&#039;s more! For a limited time only, enjoy our exclusive two-month package for just AED 6000. That&#039;s right - you get all the benefits of our Ehsan Daily Package, tissue repair tea, and private massage for two whole months, all at a discounted price. <br />\r\nDiscover the Ihsan Daily Package and experience the benefits of exclusive care and pampering today. Our team of professionals is dedicated to providing you with the highest level of care and attention, so you can be sure that you are in good hands. Contact us now to learn more and book your package today!', '', '', 'active', '1678303856pexels-anna-tarazevich-6560278.jpg', '2023,07th Jan,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-07 21:07:19', '2023-03-08 15:30:56', '6000', '2'),
(24, '3', 'عرض ( باقة عوداً حميداً)', 'Offer (Package Welcome Back)', 'هل تبحث عن وسيلة لعلاج نفسك دون كسر البنك؟ لا مزيد من البحث! لفترة محدودة فقط ، استفد من عرض الخصم المذهل لدينا ووفر 20٪ على جميع خدمات السبا. من التدليك وعلاجات الوجه إلى علاجات الجسم والمزيد ، لدينا كل ما تحتاجه للاسترخاء وتجديد شبابك. لا تفوت هذه الفرصة لتدلل نفسك ببعض التدليل الذي تستحقه بسعر لا يهزم. احجز موعدك الآن واختبر أقصى درجات الرفاهية والاسترخاء.<br />\r\n<br />\r\nدلّل نفسك مع باقة الترحيب بعودتنا مقابل 500 درهم فقط! استمتع بجلسة مساج بالأحجار الساخنة (بقيمة 300 درهم إماراتي) ، وعلاج للوجه (بقيمة 100 درهم إماراتي) ، ومقشر للجسم (بقيمة 100 درهم إماراتي) ، وماسك مغذي للشعر (بقيمة 100 درهم إماراتي). احجز الآن وانغمس في تجربة السبا المثالية. عرض لفترة محدودة ، لا تفوت الفرصة!', 'Looking for a way to treat yourself without breaking the bank? Look no further! For a limited time only, take advantage of our amazing discount offer and save 20% on all spa services. From massages and facials to body treatments and more, we have everything you need to relax and rejuvenate. Don&#039;t miss out on this opportunity to treat yourself to some well-deserved pampering at an unbeatable price. Book your appointment now and experience the ultimate in luxury and relaxation.<br />\r\n<br />\r\nGet pampered with our Welcome Back package for only AED 500! Enjoy a hot stone massage (valued at AED 300), a customized facial (valued at AED 100), a body scrub (valued at AED 100), and a nourishing hair mask (valued at AED 100). Book now and indulge in the ultimate spa experience. Limited time offer, don&#039;t miss out!', '', '', 'active', '1678304252pexels-elina-fairytale-3865800.jpg', '2023,07th Jan,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-07 21:28:28', '2023-03-08 15:37:32', '400', '1'),
(25, '3', 'عرض (باقة  تجهيزات ممر السعاده (  قبل السفر ))', 'Offer (Happiness Passage Equipment Package (Before Travel))', 'لا تفوت عرضنا الحصري! احجز باقة Happiness Passage اليوم واستمتع بست علاجات فاخرة بسعر خمسة فقط مقابل 750 درهمًا إماراتيًا (850 درهمًا إماراتيًا في الأصل). انغمس في تدليك استرخاء لكامل الجسم ، وتنظيف للبشرة ، ومقشر للجسم وماسك ، وشمع الأذن ، وضغط الملح ، وقناع مغذي للشعر. سيضمن لك المعالجون وخبراء التجميل الماهرون شعورك بالاسترخاء التام وتجديد شبابك قبل الشروع في رحلتك. ابدأ رحلاتك على قدمك اليمنى مع حزمة Happy Passage. احجز الآن ووفر 100 درهم!', 'Don&#039;t miss out on our exclusive offer! Book the Happiness Passage Package today and enjoy six luxurious treatments for the price of five, only for AED 750 (originally AED 850). Indulge in a full-body relaxation massage, skin cleansing, body scrub and mask, ear candling, salt compress, and nourishing hair mask. Our skilled therapists and estheticians will ensure you feel completely relaxed and rejuvenated before you embark on your journey. Start your travels off on the right foot with the Happiness Passage Package. Book now and save AED 100!', '', '', 'active', '1678304736pexels-elina-fairytale-3865583.jpg', '2023,07th Jan,(Sat) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-07 21:34:11', '2023-03-08 15:45:36', '750', '1'),
(26, '8', 'مساج  الأنسجة العميقة', 'Deep Tissue Massage', 'أعد شحن جسدك وعقلك من خلال التدليك المنعش للأنسجة العميقة لمدة 90 دقيقة. يستخدم المعالجون المهرة لدينا ضغطًا قويًا للتغلغل بعمق في عضلاتك ، مما يوفر الراحة من الألم المزمن والتوتر. جرب الاسترخاء المطلق مقابل 250 درهم فقط. احجز موعدك الآن واشعر بالفرق مع خدمة تدليك الأنسجة العميقة المتميزة. دعونا نجدد شباب جسمك ونتركك تشعر بالحيوية والانتعاش.', 'Recharge your body and mind with our invigorating 90-minute deep tissue massage. Our skilled therapists use firm pressure to penetrate deep into your muscles, providing relief from chronic pain and tension. Experience the ultimate relaxation for only 250 dirhams. Book your appointment now and feel the difference with our premium deep tissue massage service. Let us rejuvenate your body and leave you feeling revitalized and refreshed.', '', '', 'active', '1678339626مساج الانسجة العميقة.jpg', '2023,09th Jan,(Mon) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-09 20:37:41', '2023-03-09 01:27:06', '250', NULL),
(27, '8', 'المساج التايلندي', 'Tai Massage', 'جرب القوة العلاجية القديمة للتدليك التايلاندي من خلال خدمتنا المتميزة لمدة ساعة واحدة. يستخدم المعالجون المهرة لدينا مزيجًا من تمارين الإطالة والعلاج بالابر وتوازن الطاقة لتجعلك تشعر بالاسترخاء وتجدد شبابك. استمتع بتجربة السبا الفاخرة لدينا مقابل 200 درهم فقط. احجز موعدك الآن وانغمس في الفوائد العلاجية لتقنية التدليك التقليدية هذه. دعنا ننقلك إلى مكان من الاسترخاء والرفاهية المطلقين.', 'Experience the ancient healing power of Thai massage with our premium one-hour service. Our skilled therapists use a combination of stretching, acupressure, and energy balancing to leave you feeling relaxed and rejuvenated. Enjoy our luxurious spa experience for only 200 dirhams. Book your appointment now and immerse yourself in the therapeutic benefits of this traditional massage technique. Let us transport you to a place of ultimate relaxation and well-being.', '', '', 'active', '1678339724مساج التايلندى.jpg', '2023,09th Jan,(Mon) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-09 20:38:53', '2023-03-09 01:28:44', '200', NULL),
(28, '9', 'اسكراب الجسم  مع ماسك', 'Full Body Scraping  & Mask', 'اسكراب الجسم  مع ماسك <br />\r\nلمدة 90 دقيقة ب 150 درهم', 'دلل نفسك بتجربة التدليل المطلقة مع علاج ماسك وتقشير الجسم. سيستخدم المعالجون الخبراء لدينا تقنيات تقشير لطيفة لإزالة خلايا الجلد الميتة ، متبوعة بقناع مغذي لترك بشرتك ناعمة كالحرير وترطيبها بعمق. في غضون 90 دقيقة فقط ، ستتمتع بتجديد كامل للجسم ، مما يجعلك تشعر بالانتعاش والتجدد. وبسعرنا المعقول الذي يبلغ 150 درهمًا فقط ، يمكنك الانغماس في هذه التجربة الفاخرة دون كسر البنك. احجز جلستك الآن ودعنا نساعدك في الكشف عن أفضل بشرتك حتى الآن.', '', '', 'active', '1678342069سكراب الجسم مع ماسك.jpg', '2023,09th Jan,(Mon) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-09 20:48:34', '2023-03-09 02:07:49', '150', NULL),
(29, '11', 'كمادات الأعشاب', 'Herbal compresses', 'جرب الاسترخاء المطلق مع العلاج بالضغط بالأعشاب المجدد للنشاط. يستخدم المعالجون الخبراء لدينا مجموعة من الأساليب التقليدية والأعشاب العطرية للتخلص من التوتر والتوتر. هدئ حواسك وانغمس في علاج الضغط العشبي لمدة 60 دقيقة مقابل 200 درهم فقط. احجز موعدك الآن ودلل نفسك بتجربة سبا منعشة ستشعرك بالانتعاش والتجدد.', 'Experience ultimate relaxation with our rejuvenating herbal compress therapy. Our expert therapists use a combination of traditional techniques and aromatic herbs to melt away your stress and tension. Soothe your senses and indulge in this 60-minute herbal compress therapy for only 200 dirhams. Book your appointment now and treat yourself to a revitalizing spa experience that will leave you feeling refreshed and renewed.', '', '', 'active', '1678338890كمادات الاعشاب.jpg', '2023,10th Jan,(Tue) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-10 18:04:32', '2023-03-09 01:14:50', '200', NULL),
(31, '10', 'باقة ( عوداً حميداً )', 'Package (Welcome back)', 'مرحبًا بكم من جديد في السبا الفاخر ومركز الاسترخاء! يسعدنا أن نقدم باقة عوداً حميداً  ، وهي عرض حصري مصمم خصيصًا لعملائنا المخلصين. تقدم باقتنا أربعة علاجات مذهلة مصممة لتجعلك تشعر بالاسترخاء والتجدد والانتعاش.  <br />\r\n  <br />\r\nمقابل 500 درهم فقط ، يمكنك الاستمتاع بمساج الاحجار الساخنه (هوت ستون ) بقيمة 300 درهم ، وتنظيف البشره  (فيشل) بقيمة 100 درهم ، و اسكراب الجسم بقيمة 100 درهم ، وماسك مغذي للشعر بقيمة 100 درهم. فيما يلي بعض التفاصيل الإضافية حول كل علاج:  <br />\r\n  <br />\r\nمساج الاحجار الساخنه (هوت ستون ) : يستخدم هذا العلاج الأحجار الساخنة لتخفيف توتر العضلات وتحسين الدورة الدموية وتعزيز الاسترخاء. سيستخدم المدلكون الماهرون الحجارة لاستهداف نقاط الضغط على جسمك ، مما يجعلك تشعر بالانتعاش والانتعاش. تبلغ قيمة هذا العلاج وحده 300 درهم ، لكنه مشمول في باقة الترحيب بالعودة بدون أي تكلفة إضافية!  <br />\r\n  <br />\r\nتنظيف البشره  (فيشل) : تم تخصيص علاج الوجه لدينا وفقًا لاحتياجات بشرتك الفريدة ، مما يجعل بشرتك تشعر بالنعومة والانتعاش والتوهج. سيقوم خبراؤنا بتحليل بشرتك واستخدام أحدث التقنيات والمنتجات لضمان أفضل النتائج الممكنة. تقدر قيمة هذا العلاج بـ 100 درهم ، لكنه مشمول في باقة الترحيب بالعودة بدون أي تكلفة إضافية!  <br />\r\n  <br />\r\nو اسكراب الجسم: تستخدم هذه التقنية الصينية التقليدية أداة متخصصة لكشط بشرتك بلطف وتعزيز الدورة الدموية وإزالة خلايا الجلد الميتة. هذا العلاج مثالي لأولئك الذين يتطلعون إلى تحسين ملمس بشرتهم وتعزيز العافية بشكل عام. تبلغ قيمة كشط الجسم بالكامل 100 درهم ، ولكنها مشمولة في باقة الترحيب بالعودة بدون أي تكلفة إضافية!  <br />\r\n  <br />\r\nماسك مغذي الشعر: يعتبر علاج قناع الشعر المغذي الخاص بنا مثاليًا لإعادة تنشيط الشعر الجاف والتالف ، مما يجعله حريريًا ولامعًا وصحيًا. سيستخدم خبراء الشعر لدينا أحدث التقنيات والمنتجات لتغذية شعرك واستعادة لمعانه الطبيعي. تقدر قيمة هذا العلاج بـ 100 درهم ، لكنه مشمول في باقة الترحيب بالعودة بدون أي تكلفة إضافية!  <br />\r\n  <br />\r\nلا تفوّت هذا العرض الذي لا يُضاهى والذي صُمم ليوفر لك تجربة سبا لا تُنسى. احجز موعدك الآن ودعنا نتكفل بالباقي. عرض الترحيب بعودتنا هو عرض لفترة محدودة ، لذا تصرف بسرعة لتأمين مكانك!', 'Welcome back to our luxurious spa and relaxation center! We are delighted to introduce our Welcome Back package, an exclusive offer crafted especially for our loyal customers. Our package offers four amazing treatments that are designed to leave you feeling relaxed, rejuvenated, and refreshed.  <br />\r\n  <br />\r\nFor just 500 dirhams, you can enjoy a Hotstone Massage worth 300 dirhams, a Facial worth 100 dirhams, a Full Body Scraping worth 100 dirhams, and a Hair Mask worth 100 dirhams. Here are some more details about each treatment:  <br />\r\n  <br />\r\nHotstone Massage: This treatment uses heated stones to relieve muscle tension, improve circulation, and promote relaxation. Our skilled masseuses will use the stones to target pressure points on your body, leaving you feeling rejuvenated and refreshed. This treatment alone is worth 300 dirhams, but it&#039;s included in our Welcome Back package at no additional cost!  <br />\r\n  <br />\r\nFacial: Our facial treatment is customized to your unique skin needs, leaving your skin feeling smooth, refreshed, and glowing. Our experts will analyze your skin and use the latest techniques and products to ensure the best possible results. This treatment is valued at 100 dirhams, but it&#039;s included in our Welcome Back package at no additional cost!  <br />\r\n  <br />\r\nFull Body Scraping: This traditional Chinese technique uses a specialized tool to gently scrape your skin, promoting circulation and removing dead skin cells. This treatment is perfect for those looking to improve their skin texture and promote overall wellness. The Full Body Scraping is worth 100 dirhams, but it&#039;s included in our Welcome Back package at no additional cost!  <br />\r\n  <br />\r\nHair Mask: Our nourishing hair mask treatment is perfect for revitalizing dry, damaged hair, leaving it silky, shiny, and healthy. Our hair experts will use the latest techniques and products to nourish your hair and restore its natural shine. This treatment is valued at 100 dirhams, but it&#039;s included in our Welcome Back package at no additional cost!  <br />\r\n  <br />\r\nDon&#039;t miss out on this unbeatable offer that is designed to provide you with an unforgettable spa experience. Book your appointment now and let us take care of the rest. Our Welcome Back package is a limited-time offer, so act fast to secure your spot!', '', '', 'inactive', '1678253795pexels-olia-danilevich-9336032.jpg', '2023,13th Jan,(Fri) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-12 22:21:59', '2023-03-08 15:41:13', '500', '1'),
(32, '10', 'باقة  تجهيزات ممر السعاده (  قبل السفر )', 'Happiness Passage Equipment Package (Before Traveling)', 'نقدم لكم حباقة  تجهيزات ممر السعاده (  قبل السفر ) ، المصممة لمساعدتك على الاسترخاء والاسترخاء قبل سفرك. لقد قمنا برعاية مجموعة من الخدمات التي ستجعلك تشعر بالانتعاش والتجدد ، حتى تتمكن من بدء رحلتك على القدم اليمنى. إليك ما يمكن أن تتوقعه:  <br />\r\n1. مساج استرخائ - استمتع بتدليك كامل للجسم لمدة 60 دقيقة يساعد على تخفيف التوتر وتخفيف التوتر. يستخدم المعالجون الماهرون لدينا مجموعة من الأساليب لضمان شعورك بالاسترخاء التام. السعر: 150 درهم.  <br />\r\n2. تنظيف البشرة - تنغمس في تنظيف عميق للوجه يترك بشرتك تشعر بالانتعاش والتجدد. يستخدم خبراء التجميل لدينا منتجات لطيفة لإزالة الشوائب واستعادة التوازن الطبيعي لبشرتك. السعر: 100 درهم.  <br />\r\n3. اسكراب الجسم مع ماسك - جرب علاجًا فاخرًا لمدة 90 دقيقة يتضمن مقشرًا لكامل الجسم وماسكًا. يقشر المقشر الطبيعي بشرتك وينعمها ، بينما يغذي قناع الترطيب لدينا ويرطبها بعمق. السعر: 150 درهم.  <br />\r\n4. ايركاندلنج ( شمع للإذنين ) - يخفف آلام الأذن ، وطنين الأذن ، وضغط الجيوب الأنفية من خلال علاج تشميع الأذن اللطيف والمريح. السعر: 50 درهم.  <br />\r\n5. كمادات الأملاح  المعدنيه - أعد توازن جسمك وعقلك مع علاج ضغط الملح لمدة 60 دقيقة. تساعد الكمادات الساخنة الخاصة بنا على تحسين الدورة الدموية وتقليل الالتهاب وتعزيز الاسترخاء. السعر: 200 درهم.  <br />\r\n6. ماسك مغذي للشعر - امنحي شعرك بعض الحب من خلال علاج قناع الشعر المغذي الذي نقدمه لمدة 25 دقيقة. يساعد قناعنا على إصلاح شعرك وتقويته ، مما يجعله ناعمًا وحريريًا. السعر: 100 درهم.  <br />\r\nيتم تضمين جميع الخدمات الست في باقة  تجهيزات ممر السعاده (  قبل السفر ) بسعر إجمالي قدره 750 درهمًا. احجز الآن وابدأ رحلاتك وأنت تشعر بالاسترخاء والانتعاش!', 'Introducing our Happiness Passage Equipment Package, designed to help you relax and unwind before your travels. We&#039;ve curated a collection of services that will leave you feeling refreshed and rejuvenated, so you can start your journey on the right foot. Here&#039;s what you can expect:  <br />\r\n1.	Relaxing Massage - Enjoy a full-body massage for 60 minutes that will help to ease tension and relieve stress. Our skilled therapists use a combination of techniques to ensure you leave feeling completely relaxed. Price: 150 dirhams.  <br />\r\n2.	Facial Cleaning - Indulge in a deep cleansing facial that will leave your skin feeling refreshed and rejuvenated. Our estheticians use gentle products to remove impurities and restore your skin&#039;s natural balance. Price: 100 dirhams.  <br />\r\n3.	Full Body Scrub &amp; Mask - Experience a luxurious 90-minute treatment that includes a full-body scrub and mask. Our natural scrub exfoliates and smooths your skin, while our hydrating mask deeply nourishes and moisturizes. Price: 150 dirhams.  <br />\r\n4.	Ear Candling - Alleviate ear pain, tinnitus, and sinus pressure with our gentle and soothing ear candling treatment. Price: 50 dirhams.  <br />\r\n5.	Salt Compresses - Rebalance your body and mind with our 60-minute salt compress treatment. Our heated compresses help to improve circulation, reduce inflammation, and promote relaxation. Price: 200 dirhams.  <br />\r\n6.	Hair Mask - Give your hair some love with our nourishing 25-minute hair mask treatment. Our mask helps to repair and strengthen your hair, leaving it soft and silky. Price: 100 dirhams.  <br />\r\nAll six services are included in our Happiness Passage Equipment Package for a total price of 750 dirhams. Book now and start your travels feeling relaxed and refreshed!', '', '', 'inactive', '1678295849pexels-antoni-shkraba-6076146.jpg', '2023,13th Jan,(Fri) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-12 22:23:46', '2023-03-08 15:46:44', '750', '1'),
(33, '10', 'برنامج التخسيس و كسر الدهون', 'SLIMMING PROGRAM', 'مرحبًا بكم في برنامج التخسيس لدينا ، باقة شهرين بسعر 3000 درهم فقط! تم تصميم برنامجنا لمساعدتك على تحقيق الوزن المثالي لجسمك وتحسين صحتك العامة ورفاهيتك.     <br />\r\nجدول الحزمة لدينا هو كما يلي:     <br />\r\nالأسبوع 1:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، اسكراب لليدين     <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، فيشل     <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، أسكراب للقدمين     <br />\r\nالأسبوع 2:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات       <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، ايركاندلنج دخان للإذن     <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات       <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات  ، سونا ومساج تكسير الدهون ، أحجار ساخنة     <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات       <br />\r\nالأسبوع الثالث:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات       <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، ماسك للشعر     <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات       <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، سكراب جسم كامل     <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات       <br />\r\nالأسبوع الرابع:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، مساج القدمين العلاجي      <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، أسكراب للقدمين     <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات   ، سونا ومساج تكسير الدهون ، سكراب و ماسك للوجه      <br />\r\nالأسبوع الخامس :     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات        <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات  ، سونا ومساج تكسير الدهون ، ماسك للشعر     <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات        <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات  ، ، سونا ومساج تكسير الدهون ،احجار ساخنة      <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات         <br />\r\nالأسبوع السادس:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات   ،      <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات ، سونا ومساج تكسير الدهون ، سكراب و ماسك للوجه        <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات        <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات  ، سونا ومساج تكسير الدهون ،  اسكراب لليدين     <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات         <br />\r\nالأسبوع السابع:     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات        <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات ،  سونا ومساج تكسير الدهون،   أحجار ساخنة       <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات ، مساج القدمين العلاجي  ، ماسك للشعر      <br />\r\nالأسبوع الثامن :     <br />\r\n&bull; الاثنين: 77LS شاي مرمم العضلات        <br />\r\n&bull; الثلاثاء: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأربعاء: 77LS شاي مرمم العضلات ، مساج ريلاكس ، ايركاندلنج دخان للاذن     <br />\r\n&bull; الخميس: 77LS شاي مرمم العضلات       <br />\r\n&bull; الجمعة: 77LS شاي مرمم العضلات       <br />\r\n&bull; السبت: 77LS شاي مرمم العضلات       <br />\r\n&bull; الأحد: 77LS شاي مرمم العضلات   ،   سكراب جسم كامل،   فيشل     <br />\r\n     <br />\r\nيتضمن محتوى برنامجنا العلاجات التالية:     <br />\r\nالشهر الاول      <br />\r\n&bull; 77LS شاي مرمم العضلاتة: 60 جلسة       <br />\r\n&bull; سونا ومساج تكسير الدهون: 15 جلسة     <br />\r\n&bull; أحجار ساخنة: 3 جلسات     <br />\r\n&bull; مساج استرخائي: جلسة واحدة     <br />\r\n&bull; مساج القدمين العلاجي : جلستين     <br />\r\n&bull; ايركاندلنج دخان للإذن : جلستين     <br />\r\n&bull; اسكراب لليدين: جلستين     <br />\r\n&bull; سكراب جسم كامل: جلستين     <br />\r\n&bull; أسكراب للقدمين: جلستين     <br />\r\n&bull; سكراب و ماسك للوجه : جلستان     <br />\r\n&bull; ماسك الشعر: 3 جلسات     <br />\r\n&bull; فيشل: جلستين     <br />\r\nالشهر الثاني      <br />\r\n&bull; 77LS شاي مرمم العضلاتة: 60 جلسة       <br />\r\n&bull; سونا ومساج تكسير الدهون: 15 جلسة     <br />\r\n&bull; أحجار ساخنة: 3 جلسات     <br />\r\n&bull; مساج استرخائي: جلسة واحدة     <br />\r\n&bull; مساج القدمين العلاجي : جلستين     <br />\r\n&bull; ايركاندلنج دخان للإذن : جلستين     <br />\r\n&bull; اسكراب لليدين: جلستين     <br />\r\n&bull; سكراب جسم كامل: جلستين     <br />\r\n&bull; أسكراب للقدمين: جلستين     <br />\r\n&bull; سكراب و ماسك للوجه : جلستان     <br />\r\n&bull; ماسك الشعر: 3 جلسات     <br />\r\n&bull; فيشل: جلستين     <br />\r\nبرنامج التخسيس لدينا هو نهج شامل وشامل لفقدان الوزن والعافية. من خلال مزيج من مساج التخسيس والشاي العلاجي وعلاجات الاسترخاء ، نهدف إلى مساعدتك على تحقيق الوزن المرغوب فيه مع تعزيز نمط حياة صحي أيضًا. تم تصميم باقتنا لتلبية احتياجاتك وتفضيلاتك الخاصة ، مع مجموعة من العلاجات التي يمكن تخصيصها لتناسب أهدافك الفردية.     <br />\r\nانضم إلى برنامج التخسيس اليوم واتخذ الخطوة الأولى نحو صحة وسعادة لك!', 'Welcome to our Slimming Program, a two-month package priced at only 3000 dirhams! Our program is designed to help you achieve your ideal body weight and improve your overall health and well-being.     <br />\r\nOur package schedule is as follows:     <br />\r\nWeek 1:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS, Suna Slimming Massage, Hand Scrub     <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS, Suna Slimming Massage, Facial     <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS, Suna Slimming Massage, Foot Scrub     <br />\r\nWeek 2:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS     <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS, Suna Slimming Massage, Ear Candles     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS     <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS, Suna Slimming Massage, Hot Stone     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS     <br />\r\nWeek 3:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS     <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS, Suna Slimming Massage, Hair Mask     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS     <br />\r\n&bull;	Friday: Therapeutic tea 77LS, Suna Slimming Massage, Body Scrub     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS     <br />\r\nWeek 4:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS, Suna Slimming Massage, Foot Massage     <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS, Suna Slimming Massage, Foot Scrub     <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS, Suna Slimming Massage, Face Mask &amp; Scrub     <br />\r\nWeek 5:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS,      <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	, Wednesday: Therapeutic tea 77LS, SUNA \\ SLIIMMING MASSAGE, HAIR MASK     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS,      <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS, SUNA \\ SLIIMMING MASSAGE, Hot Stone     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS     <br />\r\nWeek 6:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS,     <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS,SUNA \\ SLIIMMING MASSAGE, FACE  MASK &amp; SCRAP     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS,      <br />\r\n&bull;	Friday: Therapeutic tea 77LS , SUNA \\ SLIIMMING MASSAGE, HAND SCRUP     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS,     <br />\r\nWeek 7:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS,      <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS,SUNA \\ SLIIMMING MASSAGE , HOT STONE     <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS, FOOT MASSAGE , HAIR MASK     <br />\r\nWeek 8:     <br />\r\n&bull;	Monday: Therapeutic tea 77LS,      <br />\r\n&bull;	Tuesday: Therapeutic tea 77LS     <br />\r\n&bull;	Wednesday: Therapeutic tea 77LS, RELAXING MASSAGE , EAR CANDLING     <br />\r\n&bull;	Thursday: Therapeutic tea 77LS,      <br />\r\n&bull;	Friday: Therapeutic tea 77LS     <br />\r\n&bull;	Saturday: Therapeutic tea 77LS     <br />\r\n&bull;	Sunday: Therapeutic tea 77LS,BODY SRCUB , FACIAL     <br />\r\nOur program content includes the following treatments:     <br />\r\nFirst Month     <br />\r\n&bull;	Therapeutic tea 77LS: 60 sessions     <br />\r\n&bull;	Suna Slimming Massage: 15 sessions     <br />\r\n&bull;	Hot Stone: 3 sessions     <br />\r\n&bull;	Relaxing Massage: 1 session     <br />\r\n&bull;	Foot Massage: 2 sessions     <br />\r\n&bull;	Ear Candling: 2 sessions     <br />\r\n&bull;	Hand Scrub: 2 sessions     <br />\r\n&bull;	Body Scrub: 2 sessions     <br />\r\n&bull;	Foot Scrub: 2 sessions     <br />\r\n&bull;	Face Mask &amp; Scrub: 2 sessions     <br />\r\n&bull;	Hair Mask: 3 sessions     <br />\r\n&bull;	Facial: 2 sessions     <br />\r\n     <br />\r\n Second Month     <br />\r\n&bull;	Therapeutic tea 77LS: 60 sessions     <br />\r\n&bull;	Suna Slimming Massage: 15 sessions     <br />\r\n&bull;	Hot Stone: 3 sessions     <br />\r\n&bull;	Relaxing Massage: 1 session     <br />\r\n&bull;	Foot Massage: 2 sessions     <br />\r\n&bull;	Ear Candling: 2 sessions     <br />\r\n&bull;	Hand Scrub: 2 sessions     <br />\r\n&bull;	Body Scrub: 2 sessions     <br />\r\n&bull;	Foot Scrub: 2 sessions     <br />\r\n&bull;	Face Mask &amp; Scrub: 2 sessions     <br />\r\n&bull;	Hair Mask: 3 sessions     <br />\r\n&bull;	Facial: 2 sessions     <br />\r\nOur Slimming Program is a comprehensive and holistic approach to weight loss and wellness. With a combination of slimming massages, therapeutic teas, and relaxing treatments, we aim to help you achieve your desired body weight while also promoting a healthy lifestyle. Our package is designed to cater to your specific needs and preferences, with a range of treatments that can be customized to suit your individual goals.     <br />\r\nJoin our Slimming Program today and take the first step towards a healthier, happier you!', '', '', 'active', '1678344329Exercise-Vs.-Weight-Loss-Program-in-Dubai.jpg', '2023,13th Jan,(Fri) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-12 22:34:06', '2023-03-09 02:45:29', '3000', '2'),
(34, '10', 'باقة ( اكسير الحياة - يوم واحد)', 'Elixir of Life', 'هل أنت مستعد لتنغمس في يوم من الفخامة والاسترخاء الخالص؟ لا تنظر إلى أبعد من باقة Elixir of Life التي يبلغ سعرها 500 درهم فقط. <br />\r\nإليك ما يمكن أن تتوقعه من يومك في التدليل: <br />\r\n1. الوصول والمشروب الترحيبي: عند الوصول ، سيتم استقبالك بمشروب ترحيبي منعش لبدء يومك الممتع. <br />\r\n2. تدليك لكامل الجسم: سيستخدم أخصائيو التدليك المهرة لدينا خبراتهم ليقدموا لك تدليكًا لكامل الجسم يجعلك تشعر بالاسترخاء والتجدد. <br />\r\n3. علاج الوجه: تم تصميم علاج الوجه الخاص بنا لتغذية وتجديد شباب بشرتك ، مما يمنحك توهجًا متوهجًا. <br />\r\n4. مانيكير وباديكير: سيقوم فنيو الأظافر لدينا بتدليل يديك وقدميك بمانيكير وباديكير مريح. <br />\r\n5. غداء شهي: سنقدم لك غداء لذيذ ، مكتمل بالمشروبات المنعشة والحلويات اللذيذة. <br />\r\n6. الوصول إلى مرافق المسبح والسبا: بعد العلاج ، يمكنك الغطس في حمام السباحة الخاص بنا أو الاسترخاء في مرافق السبا الفاخرة لدينا. <br />\r\nاحجز باقة Elixir of Life اليوم واستمتع بأقصى درجات الرفاهية والاسترخاء.', 'Are you ready to indulge in a day of pure luxury and relaxation? Look no further than our Elixir of Life package, priced at just 500 dirhams. <br />\r\nHere&#039;s what you can expect from your day of pampering: <br />\r\n1.	Arrival and Welcome Drink: Upon arrival, you&#039;ll be greeted with a refreshing welcome drink to kick off your day of indulgence. <br />\r\n2.	Full-body Massage: Our skilled massage therapists will use their expertise to give you a full-body massage that will leave you feeling relaxed and rejuvenated. <br />\r\n3.	Facial Treatment: Our facial treatment is designed to nourish and rejuvenate your skin, leaving you with a radiant glow. <br />\r\n4.	Manicure and Pedicure: Our nail technicians will pamper your hands and feet with a relaxing manicure and pedicure. <br />\r\n5.	Gourmet Lunch: We&#039;ll treat you to a delicious gourmet lunch, complete with refreshing beverages and delectable desserts. <br />\r\n6.	Access to Pool and Spa Facilities: After your treatments, take a dip in our pool or relax in our luxurious spa facilities. <br />\r\nBook your Elixir of Life package today and experience the ultimate in luxury and relaxation.', '', '', 'active', '1678302748pexels-arina-krasnikova-6663565.jpg', '2023,13th Jan,(Fri) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-01-12 22:47:54', '2023-03-08 15:13:32', '500', '1');
INSERT INTO `articles` (`id`, `departement_id`, `articles_title_ar`, `articles_title_en`, `articles_subject_ar`, `articles_subject_en`, `articles_subject_ar2`, `articles_subject_en2`, `articles_isactive`, `articles_image`, `articles_date`, `articles_image2`, `articles_image3`, `articles_image4`, `articles_address_ar`, `articles_address_en`, `articles_rate`, `articles_map`, `articles_keyword`, `articles_desc`, `created_at`, `updated_at`, `price`, `offer_period`) VALUES
(38, '8', 'مساج الاحجار الساخنه (هوت ستون )', 'Hotstone Massage', 'انغمس في الاسترخاء المطلق مع العلاج الممتاز بالتدليك بالأحجار الساخنة. يستخدم المعالجون المهرة لدينا الأحجار الساخنة للتغلغل بعمق في عضلاتك ، مما يوفر الراحة من التوتر والتوتر. استمتع بتجربة السبا الفاخرة لمدة ساعة مقابل 90 درهمًا فقط أو 200 دقيقة مقابل 300 درهم. احجز موعدك الآن ودعنا ننقلك إلى مكان من الاسترخاء والرفاهية المطلقين. ثق بنا لرفع مستوى تجربتك في السبا وتجعلك تشعر بالانتعاش والنشاط.', 'Indulge in the ultimate relaxation with our premium hot stone massage therapy. Our skilled therapists use heated stones to penetrate deep into your muscles, providing relief from stress and tension. Enjoy our luxurious spa experience for 1 hour at only 90 dirhams or for 200 minutes at 300 dirhams. Book your appointment now and let us transport you to a place of ultimate relaxation and well-being. Trust us to elevate your spa experience and leave you feeling refreshed and invigorated.', '', '', 'active', '1678340048dreamstime_m_27705661.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-08 21:29:52', '2023-03-09 01:34:08', '60/90   200/300', NULL),
(39, '8', 'مساج  بالعصابة الخشبيه', 'Wood Massage  (May Massage)', 'اختبر الإحساس الفريد والمنشط بعلاج تدليك العصابات الخشبي. يستخدم المعالجون المهرة لدينا أدوات خشبية للتغلغل بعمق في عضلاتك ، مما يوفر الراحة من التوتر ويعزز الاسترخاء. استمتع بتجربة السبا الفاخرة لمدة ساعة واحدة مقابل 250 درهمًا فقط. احجز موعدك الآن ودعنا ننقلك إلى مكان من الاسترخاء والرفاهية المطلقين. ثق بنا لرفع مستوى تجربتك في السبا وتجعلك تشعر بالانتعاش والتجدد.', 'Experience the unique and invigorating sensation of our wooden gang massage therapy. Our skilled therapists use wooden tools to penetrate deep into your muscles, providing relief from tension and promoting relaxation. Enjoy our luxurious spa experience for one hour at only 250 dirhams. Book your appointment now and let us transport you to a place of ultimate relaxation and well-being. Trust us to elevate your spa experience and leave you feeling refreshed and rejuvenated.', '', '', 'active', '1678340183مساج العصا الخشبية.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-08 21:33:06', '2023-03-09 01:36:23', '250', NULL),
(40, '12', 'مساج القدمين التايلندي', 'Tai Foot  Massage', 'جرب الاسترخاء المطلق مع مساج القدم التايلاندي لمدة 30 دقيقة. سيستخدم المعالجون الماهرون لدينا التقنيات التقليدية لاستهداف نقاط الضغط في قدميك ، وتوفير الراحة وتعزيز العافية بشكل عام. استمتع بتجربة التجديد هذه مقابل 60 درهمًا فقط. احجز الآن ودلل قدميك بالدلال الذي تستحقه!', 'Experience the ultimate relaxation with our 30-minute Thai foot massage. Our skilled therapists will use traditional techniques to target pressure points in your feet, providing relief and promoting overall wellness. Enjoy this rejuvenating experience for only 60 dirhams. Book now and treat your feet to the pampering they deserve!', '', '', 'active', '1678343618القدمين التايلندى.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-08 22:01:31', '2023-03-09 02:33:38', '60', NULL),
(41, '12', 'مساج الظهر', 'Back Massage', 'استرخِ وخفف من توترك مع مساج الظهر لمدة 30 دقيقة مقابل 60 درهمًا فقط. دع مدلكينا ذوي الخبرة يهدئون عضلاتك المتعبة ويخففون التوتر في ظهرك. استمتع ببيئة هادئة وتدليك مخصص يلبي احتياجاتك الخاصة. تم تصميم خدمتنا لتجديد شباب جسمك وعقلك ، مما يجعلك تشعر بالانتعاش والحيوية. احجز الآن ودلل نفسك بأخذ استراحة من روتينك المزدحم.', 'Relax and relieve your stress with our 30-minute back massage for only 60 dirhams. Let our experienced masseurs soothe your tired muscles and ease the tension in your back. Enjoy a tranquil environment and a personalized massage that targets your specific needs. Our service is designed to rejuvenate your body and mind, leaving you feeling refreshed and revitalized. Book now and treat yourself to a much-needed break from your busy routine.', '', '', 'active', '1678343728الظهر.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-08 22:03:15', '2023-03-09 02:35:28', '60', NULL),
(47, '9', 'اسكراب لليدين و  القدمين  مع ماسك', 'Foot & Hand Scraping  & Mask', 'انغمس في مقشرنا الفاخر لليدين والقدمين باستخدام القناع ، واستمتع بتجربة التدليل المطلقة. هذا العلاج لمدة ساعتين سيجعل بشرتك ناعمة ومنتعشة ومتجددة. يستخدم المعالجون المهرة لدينا أفضل المنتجات لتقشير وترطيب وتغذية بشرتك. سوف تترك شعورك بالحيوية والتجدد. احجز الآن ودلل نفسك بهذه التجربة المريحة مقابل 160 درهمًا فقط.', 'Indulge in our luxurious scrub for hands and feet with a mask, and enjoy the ultimate pampering experience. This 2-hour treatment will leave your skin feeling smooth, refreshed and rejuvenated. Our skilled therapists use the finest products to exfoliate, hydrate and nourish your skin. You will leave feeling revitalized and renewed. Book now and treat yourself to this relaxing experience for only 160 dirhams.', '', '', 'active', '1678328020022.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-08 22:13:40', '2023-03-09 02:19:06', '160', NULL),
(50, '11', 'كمادات الأملاح  المعدنيه', 'Solty Compresses', 'دلل نفسك بعلاج ضغط الملح المعدني الفاخر. دع معالجينا المهرة يهدئون عضلاتك ومفاصلك باستخدام كمادات دافئة مشبعة بالأملاح الغنية بالمعادن ، مما يعزز الاسترخاء وتجديد الشباب. انغمس في علاج بضغط الملح المعدني لمدة 60 دقيقة مقابل 200 درهم فقط ، واستمتع بأقصى درجات الاسترخاء. احجز موعدك الآن لرفع مستوى تجربتك في السبا والشعور بالانتعاش والنشاط.', 'Pamper yourself with our luxurious mineral salt compress therapy. Let our skilled therapists soothe your muscles and joints with warm compresses infused with mineral-rich salts, promoting relaxation and rejuvenation. Indulge in a 60-minute mineral salt compress therapy for only 200 dirhams, and experience the ultimate relaxation. Book your appointment now to elevate your spa experience and feel refreshed and invigorated.', '', '', 'active', '1678339027كمادات الاملاح المعدنية.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 01:17:07', '2023-03-09 01:17:22', '200', NULL),
(51, '8', 'مساج مع حجامه جافه', 'Cupping Massage', 'جرب أقصى درجات الرفاهية من خلال التدليك لمدة 120 دقيقة مع العلاج بالحجامة الجافة. يستخدم المعالجون المهرة لدينا مجموعة من تقنيات التدليك وأكواب الشفط لتعزيز الدورة الدموية وتخفيف التوتر. استمتع بخدمة السبا المتميزة لدينا مقابل 600 درهم فقط. احجز موعدك الآن ودعنا ننقلك إلى عالم من الاسترخاء العميق وتجديد شبابك. ثق بنا لرفع مستوى تجربتك في السبا وتجعلك تشعر بالانتعاش والنشاط.', 'Experience the ultimate in luxury with our 120-minute massage with dry cupping therapy. Our skilled therapists use a combination of massage techniques and suction cups to promote circulation and relieve tension. Enjoy our premium spa service for only 600 dirhams. Book your appointment now and let us transport you to a world of deep relaxation and rejuvenation. Trust us to elevate your spa experience and leave you feeling refreshed and invigorated.', '', '', 'active', '1678342971message.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 01:32:21', '2023-03-09 02:22:51', '600', NULL),
(52, '9', 'اسكراب لليدين أو القدمين', 'Foot OR Hand Scraping', 'انغمس في تجربة تجديد شبابك باستخدام مقشر اليدين أو القدمين الفاخر! تم تصميم علاجنا لمدة 30 دقيقة خصيصًا لتقشير وتغذية بشرتك ، مما يجعل يديك أو قدميك تشعر بالنعومة والنعومة والانتعاش. مقابل 50 درهمًا فقط ، استمتع بلحظة من الاسترخاء والتدليل ستجعلك تشعر بالتجدد والنشاط. دلل نفسك أو أحد أفراد أسرتك بهذه التجربة البسيطة والممتعة في منتجعنا الصحي اليوم!', 'Indulge in a rejuvenating experience with our luxurious hand or foot scrub! Our 30-minute treatment is specially designed to exfoliate and nourish your skin, leaving your hands or feet feeling soft, smooth, and refreshed. For just 50 dirhams, enjoy a moment of relaxation and pampering that will leave you feeling renewed and invigorated. Treat yourself or a loved one to this simple yet indulgent experience at our spa today!', NULL, NULL, 'active', '1678342249سكراب لليدين او القدمين.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:10:49', '2023-03-09 02:10:49', '50', NULL),
(53, '9', 'اسكراب لليدين و القدمين القدمين', 'Foot & Hand Scraping', 'انغمس في مقشرنا المنعش لليدين والقدمين ، تجربة سبا مثالية تترك بشرتك ناعمة وسلسة. يستخدم معالجونا الماهرون المكونات الطبيعية لتقشير بشرتك وتجديد شبابها. استعد للانغماس في حالة من النعيم الخالص بينما تتخلى عن كل مخاوفك. احجز الآن لجلسة استرخاء لمدة 60 دقيقة مقابل 100 درهم فقط واستمتع بعلاج السبا الفاخر الذي تستحقه.', 'Indulge in our revitalizing scrub for hands and feet, an ultimate spa experience that leaves your skin soft and smooth. Our skilled therapists use natural ingredients to exfoliate and rejuvenate your skin. Get ready to immerse in a state of pure bliss as you let go of all your worries. Book now for a relaxing 60-minute session at only 100 dirhams and enjoy the luxurious spa treatment you deserve.', NULL, NULL, 'active', '16783425059a6a9ec783c7854f4461f0e6db61167d.webp', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:15:05', '2023-03-09 02:15:05', '100', NULL),
(54, '9', 'اسكراب لليدين أو القدمين مع ماسك', 'Foot OR Hand Scraping & Mask', 'انغمس في مقشر فاخر لليد أو القدم مع ماسك مجدد للحيوية يجعل بشرتك تشعر بالنعومة والانتعاش. سيقوم المعالجون المهرة لدينا بتقشير بشرتك بلطف ووضع قناع مغذي للكشف عن مظهر أكثر إشراقًا وشبابًا. يستمر العلاج لمدة 60 دقيقة وبسعر 80 درهمًا فقط. لا تفوّت هذه الطريقة المعقولة التكلفة لتدليل نفسك والاستمتاع ببشرة ناعمة ومشرقة بشكل جميل. احجز جلستك اليوم!', 'Indulge in a luxurious hand or foot scrub with a rejuvenating mask that will leave your skin feeling smooth and revitalized. Our skilled therapists will gently exfoliate your skin and apply a nourishing mask to reveal a brighter, more youthful appearance. The treatment lasts for 60 minutes and is priced at just 80 dirhams. Don&#039;t miss out on this affordable way to pamper yourself and enjoy beautifully soft and radiant skin. Book your session today!', NULL, NULL, 'active', '16783426569678976-1258261839.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:17:36', '2023-03-09 02:17:36', '80', NULL),
(55, '9', 'ايركاندلنج ( شمع للإذنين )', 'Ear Candling', 'اختبر راحة تنظيف الآذان  لدينا مقابل 50 درهمًا فقط. يستخدم المتخصصون المهرة لدينا تقنيات آمنة وفعالة لإزالة تراكم شمع الأذن ، وتعزيز السمع بشكل أفضل وصحة الأذن بشكل عام. استرخ في بيئتنا المريحة والصحية بينما نعتني باحتياجات العناية بأذنك. لا تدع شمع الأذن يعيق سمعك ، احجز موعدك اليوم واستمتع بمزايا خدمة الري التي نقدمها.', 'Experience the relief of clean ears with our irrigation service for just 50 dirhams. Our skilled professionals use safe and effective techniques to remove earwax buildup, promoting better hearing and overall ear health. Relax in our comfortable and hygienic environment while we take care of your ear care needs. Don&#039;t let earwax impede your hearing, book your appointment today and experience the benefits of our irrigation service.', NULL, NULL, 'active', '1678342877Ldm3KbUhbsCUqNAxq3Zd4xBpr5BYpTaaG5VvFGPl.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:21:17', '2023-03-09 02:21:17', '50', NULL),
(56, '12', 'مساج الرأس والأكتاف ( بدون زيت)', 'Head & Sholder Massage ( No Oil)', 'انغمس في تجربة الاسترخاء المطلقة مع تدليك الرأس والكتف. سيستخدم المعالجون الخبراء لدينا التقنيات التقليدية لتخفيف التوتر وتهدئة عقلك ، مما يجعلك تشعر بالانتعاش والتجدد. هذا التدليك لمدة 45 دقيقة ، والذي يتم إجراؤه بدون زيت ، يركز على الجزء العلوي من الجسم لتخفيف الصداع وآلام الرقبة والكتف. مقابل 100 درهم فقط ، يمكنك أن تدلل نفسك بالهروب المثالي من ضغوط الحياة اليومية. احجز الآن ودعنا نساعدك على الاسترخاء.', 'Indulge in the ultimate relaxation experience with our head and shoulder massage. Our expert therapists will use traditional techniques to relieve tension and ease your mind, leaving you feeling refreshed and rejuvenated. This 45-minute massage, performed without oil, focuses on your upper body to relieve headaches, neck and shoulder pain. For only 100 dirhams, you can treat yourself to the perfect escape from the stresses of daily life. Book now and let us help you unwind.', NULL, NULL, 'active', '1678343879الراس و الكتف.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:37:59', '2023-03-09 02:37:59', '100', NULL),
(57, '12', 'مساج الرأس والأكتاف ( مع زيت)', 'Head & Sholder Massage (Oil)', 'انغمس في الاسترخاء التام مع تدليك الرأس والكتفين بالزيت ، المصمم لتهدئة وتخفيف التوتر. اسمح للمدلكين الماهرين لدينا بعمل سحرهم على عضلاتك المتعبة ، مما يجعلك تشعر بالانتعاش والتجدد. في 45 دقيقة فقط ، استمتع بالهدوء التام وانس ضغوطك اليومية مقابل 120 درهمًا فقط. احجز الآن وامنح نفسك هدية العافية والصفاء.', 'Indulge in pure relaxation with our head and shoulder massage with oil, designed to soothe and ease tension. Let our skilled masseuses work their magic on your tired muscles, leaving you feeling refreshed and rejuvenated. In just 45 minutes, experience complete tranquility and forget your daily stress for only 120 dirhams. Book now and give yourself the gift of wellness and serenity.', NULL, NULL, 'active', '1678344069زيت.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:41:09', '2023-03-09 02:41:09', '120', NULL),
(58, '10', 'باقة (التجهيز للحمل) قريباً', 'am reedy 4 it ) COMINNG SOON)', 'COMINNG SOON', 'COMINNG SOON', '', '', 'active', '1678344655Top-foods-during-pregnancy.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:50:55', '2023-03-09 02:54:59', '0', '0'),
(59, '10', 'باقة (ما بعد الولاده) قــــــــــــــريبا', 'Mom & Baby Package Coming Soon', 'أخبار سارة لجميع القديم الجدد هناك! حزمة الإعلانات الرائعة من مجموعة الأم والطفل. دلل نفسك بيوم المساومة الذاتية ، مع الارتباط أيضًا بمجموعة الفرح الثمينة الخاصة بك. سوف تكون جميعًا مرتاحين مرتاحين ومرتاحين طوال الوقت. واستعدوا إلى الحصول على مزيد من المعلومات حول هذا العمل!', 'Good news for all the new olds out there! Adorable Announcement Pack from the Mother and Child collection. Treat yourself to a day of self-bargaining, while also bonding with your precious bundle of joy. You will all be comfortable and relaxed all the time. And get ready for more information on this business!', '', '', 'active', '16783447695.jpg', '2023,09th Mar,(Thu) ', NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-03-09 02:52:49', '2023-03-09 02:54:48', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 14, 5, '1674945321images (2).jfif', '50', '2023-02-05 20:39:18', '2023-02-08 20:28:58'),
(2, 2, 15, 2, '1674945336images.jfif', '20', '2023-02-05 20:40:16', '2023-02-08 20:29:06'),
(6, 2, 12, 1, '1674945287images (4).jfif', '5', '2023-02-08 18:55:18', '2023-02-08 18:55:18'),
(7, 3, 14, 1, '1674945321images (2).jfif', '10', '2023-02-08 23:17:38', '2023-02-08 23:17:38'),
(8, 3, 15, 2, '1674945336images.jfif', '20', '2023-02-08 23:17:42', '2023-02-08 23:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `user_id`, `user_name`, `user_email`, `user_address`, `user_mobile`, `product_name`, `quantity`, `price`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'user', 'user@info.com', 'الامارات', '123456789', 'منتج 3', '4', '40', '160', 'تم التوصيل', '2023-02-08 19:49:19', '2023-02-10 23:00:46'),
(2, '2', 'user', 'user@info.com', NULL, '123456789', 'منتج 4', '1', '10', '170', 'ب انتظار التوصيل', '2023-02-08 19:49:19', '2023-02-08 19:49:19'),
(4, '3', 'user1', 'user1@info.com', NULL, '123456789', 'منتج 3', '2', '20', '40', 'ب انتظار التوصيل', '2023-02-08 19:54:59', '2023-02-08 19:54:59'),
(5, '3', 'user1', 'user1@info.com', NULL, '123456789', 'منتج 1', '1', '5', '45', 'ب انتظار التوصيل', '2023-02-08 19:54:59', '2023-02-08 19:54:59'),
(6, '3', 'user1', 'user1@info.com', NULL, '123456789', 'منتج 3', '1', '10', '10', 'ب انتظار التوصيل', '2023-02-08 23:18:01', '2023-02-08 23:18:01'),
(7, '3', 'user1', 'user1@info.com', NULL, '123456789', 'منتج 4', '2', '20', '40', 'ب انتظار التوصيل', '2023-02-08 23:18:01', '2023-02-08 23:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'نشط',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phone`, `type`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ayman', 'user@info.com', '12345', 'مقترح', '1 <br />\r\n2 <br />\r\n3', 'غير نشط', '2023-01-28 20:00:43', '2023-01-28 20:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `copouns`
--

CREATE TABLE `copouns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copoun_name` varchar(255) NOT NULL,
  `copoun_value` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copouns`
--

INSERT INTO `copouns` (`id`, `copoun_name`, `copoun_value`, `status`, `created_at`, `updated_at`) VALUES
(1, '244', '10', 'active', '2023-01-13 13:21:20', '2023-01-13 13:21:20'),
(3, '245', '30', 'active', '2023-01-13 14:18:45', '2023-01-13 14:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_fatherid` varchar(255) DEFAULT NULL,
  `department_title_ar` varchar(255) DEFAULT NULL,
  `department_title_en` varchar(255) DEFAULT NULL,
  `department_isactive` varchar(255) DEFAULT NULL,
  `department_isbranch` varchar(255) DEFAULT NULL,
  `department_showdate` varchar(255) DEFAULT NULL,
  `department_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_fatherid`, `department_title_ar`, `department_title_en`, `department_isactive`, `department_isbranch`, `department_showdate`, `department_image`, `created_at`, `updated_at`, `categories`) VALUES
(1, NULL, 'معرض الصور', 'main slider', 'active', 'inactive', NULL, NULL, '2022-12-24 20:20:00', '2022-12-25 20:44:28', NULL),
(2, NULL, 'نبذة عنا', 'about us', 'active', 'inactive', NULL, NULL, '2022-12-24 21:26:51', '2022-12-24 21:26:51', NULL),
(3, NULL, 'اقوي العروض', 'best offers', 'active', 'inactive', NULL, NULL, '2022-12-24 21:54:12', '2023-01-31 20:44:26', NULL),
(4, NULL, 'المضاف حديثا', 'recentely added', 'active', 'inactive', NULL, NULL, '2022-12-25 17:44:48', '2022-12-25 17:44:48', NULL),
(6, NULL, 'الشروط والاحكام', 'terms and policies', 'active', 'inactive', NULL, NULL, '2022-12-26 17:33:25', '2022-12-26 17:33:25', NULL),
(7, NULL, 'المنتجات', 'products', 'active', 'inactive', NULL, NULL, '2023-01-01 17:26:33', '2023-01-01 17:26:33', NULL),
(8, NULL, 'مساج لكامل الجسم', 'Full Body Massage', 'active', NULL, NULL, NULL, '2023-01-04 19:00:08', '2023-03-08 20:41:47', 'active'),
(9, NULL, 'العناية بالجسم', 'Body Care', 'active', NULL, NULL, NULL, '2023-01-04 19:09:24', '2023-03-08 20:42:24', 'active'),
(10, NULL, 'الاشتراكات', 'Subscriptions', 'active', 'inactive', NULL, NULL, '2023-01-04 21:34:59', '2023-01-07 22:18:06', NULL),
(11, NULL, 'الكمادات الساخنه للجسم', 'Body Warm Compresses', 'active', NULL, NULL, NULL, '2023-01-09 20:47:08', '2023-03-08 20:43:07', 'active'),
(12, NULL, 'مساج اجزاء محددة في الجسم', 'Spicial Parts Massage', 'active', NULL, NULL, NULL, '2023-03-08 21:36:30', '2023-03-08 21:37:07', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_29_121110_create_articles_table', 1),
(6, '2022_09_29_121334_create_departments_table', 1),
(7, '2022_09_29_121641_create_settings_table', 1),
(8, '2022_12_26_201525_add_terms_to_settings_table', 2),
(9, '2022_12_31_212241_add_price_to_articles_table', 3),
(10, '2023_01_02_192820_create_contactus_table', 4),
(11, '2023_01_04_203148_add_categories_to_departments_table', 5),
(12, '2023_01_07_224544_add_offer_period_to_articles_table', 6),
(13, '2023_01_13_141939_create_copouns_table', 7),
(14, '2023_01_13_163258_add_mobile_to_users_table', 8),
(15, '2023_01_14_204653_create_orders_table', 9),
(16, '2023_01_14_205942_create_orders_table', 10),
(17, '2023_01_14_210203_create_orders_table', 11),
(18, '2014_10_12_100000_create_user_password_resets_table', 12),
(19, '2020_07_18_150148_create_shipments_table', 12),
(20, '2020_07_18_182957_create_admins_table', 12),
(21, '2020_07_18_183200_create_admin_password_resets_table', 12),
(22, '2020_07_18_193248_create_brands_table', 12),
(23, '2020_07_19_140338_create_languages_table', 12),
(24, '2020_07_19_171650_create_categories_table', 12),
(25, '2020_07_20_171637_create_products_table', 12),
(26, '2023_01_28_215852_create_contactus_table', 13),
(27, '2023_01_28_232636_add_work_time_to_settings_table', 14),
(28, '2023_02_05_205134_create_carts_table', 15),
(29, '2023_02_05_210958_create_carts_table', 16),
(30, '2023_02_05_220057_create_carts_table', 17),
(31, '2023_02_07_202248_add_quantity_to_orders_table', 18),
(32, '2023_02_08_212410_create_cart_orders_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_start_date` varchar(255) DEFAULT NULL,
  `service_end_date` varchar(255) DEFAULT NULL,
  `service_period` varchar(255) DEFAULT NULL,
  `service_price` varchar(255) DEFAULT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_email`, `user_address`, `user_mobile`, `type`, `status`, `service_name`, `service_start_date`, `service_end_date`, `service_period`, `service_price`, `service_description`, `created_at`, `updated_at`, `quantity`, `total`) VALUES
(1, '2', 'user', 'user@info.com', 'الامارات', '123456789', 'service', 'بانتظار الموافقة', 'service 1', NULL, NULL, NULL, NULL, NULL, '2023-01-14 19:44:48', '2023-02-10 23:02:45', NULL, NULL),
(2, '2', 'user', 'user@info.com', NULL, '123456789', 'service', 'نشط', 'service 1', NULL, NULL, NULL, '500', 'des 1    \r\ndes 2    \r\ndes 3', '2023-01-14 19:46:16', '2023-01-18 20:52:55', NULL, NULL),
(3, '2', 'user', 'user@info.com', NULL, '123456789', 'service', 'بانتظار الموافقة', 'service 1', NULL, NULL, NULL, NULL, 'des 1   <br />\r\ndes 2   <br />\r\ndes 3', '2023-01-14 19:49:57', '2023-01-14 19:49:57', NULL, NULL),
(4, '3', 'user1', 'user1@info.com', 'emirates  abuzabi', '10123456789', 'service', 'نشط', 'service 2', NULL, NULL, NULL, '300', '1     \r\n2     \r\n3', '2023-01-14 19:53:31', '2023-03-08 15:52:40', NULL, NULL),
(6, '3', 'user1', 'user1@info.com', 'emirates', '123456789', 'service', 'بانتظار الموافقة', 'service 4', NULL, NULL, NULL, NULL, '1 <br />\r\n2 <br />\r\n3', '2023-01-14 19:56:38', '2023-01-14 19:56:38', NULL, NULL),
(7, '2', 'user', 'user@info.com', NULL, '123456754', 'service', 'بانتظار الموافقة', 'service 1', NULL, NULL, NULL, '500', 'des 1   <br />\r\ndes 2   <br />\r\ndes 3', '2023-01-18 20:16:28', '2023-01-18 20:16:28', NULL, NULL),
(8, '2', 'user', 'user@info.com', 'emirates  abuzabi', '123456789', 'service', 'بانتظار الموافقة', 'massage 2', NULL, NULL, NULL, '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s', '2023-01-30 17:30:56', '2023-01-30 17:30:56', NULL, NULL),
(10, '2', 'user', 'user@info.com', 'emirates  abuzabi', '123456789', 'offer', 'بانتظار الموافقة', 'offer 1', NULL, NULL, '2', '100', 'A small river named Duden flows by their place and supplies', '2023-01-30 18:53:58', '2023-01-30 18:53:58', NULL, NULL),
(11, '2', 'user', 'user@info.com', NULL, '123456789', 'offer', 'بانتظار الموافقة', 'offer 3', NULL, NULL, '1', '30', 'A small river named Duden flows by their place and supplies', '2023-02-01 22:12:22', '2023-02-01 22:12:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_title_ar` text DEFAULT NULL,
  `setting_title_en` text DEFAULT NULL,
  `setting_site_email` text DEFAULT NULL,
  `setting_keywords` text DEFAULT NULL,
  `setting_description` text DEFAULT NULL,
  `setting_site_address_ar` text DEFAULT NULL,
  `setting_site_address_en` text DEFAULT NULL,
  `setting_googlemap` text DEFAULT NULL,
  `setting_facebookurl` text DEFAULT NULL,
  `setting_twitterurl` text DEFAULT NULL,
  `setting_googleplusurl` text DEFAULT NULL,
  `setting_instgramurl` text DEFAULT NULL,
  `setting_snapchaturl` varchar(255) DEFAULT NULL,
  `setting_linkedinurl` varchar(255) DEFAULT NULL,
  `setting_youtubeurl` varchar(255) DEFAULT NULL,
  `setting_whatsappurl` varchar(255) DEFAULT NULL,
  `setting_sitetell1` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `setting_terms_ar` text DEFAULT NULL,
  `setting_terms_en` text DEFAULT NULL,
  `setting_pay_policy_ar` text DEFAULT NULL,
  `setting_pay_policy_en` text DEFAULT NULL,
  `setting_payback_policy_ar` text DEFAULT NULL,
  `setting_payback_policy_en` text DEFAULT NULL,
  `setting_worktime_ar` text DEFAULT NULL,
  `setting_worktime_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_title_ar`, `setting_title_en`, `setting_site_email`, `setting_keywords`, `setting_description`, `setting_site_address_ar`, `setting_site_address_en`, `setting_googlemap`, `setting_facebookurl`, `setting_twitterurl`, `setting_googleplusurl`, `setting_instgramurl`, `setting_snapchaturl`, `setting_linkedinurl`, `setting_youtubeurl`, `setting_whatsappurl`, `setting_sitetell1`, `created_at`, `updated_at`, `setting_terms_ar`, `setting_terms_en`, `setting_pay_policy_ar`, `setting_pay_policy_en`, `setting_payback_policy_ar`, `setting_payback_policy_en`, `setting_worktime_ar`, `setting_worktime_en`) VALUES
(1, 'صالون نسائي', 'women salon', 'info@salon.com', NULL, NULL, 'الامارات.. العاصمة ... الشارع الاول', 'Emirates...capital...first street', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3077082.6796107087!2d17.845978921000658!3d41.13532157262147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13453bf3bd274c2d%3A0x77ce589d6983bee!2sAlbania!5e0!3m2!1sen!2seg!4v1671999646414!5m2!1sen!2seg\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.google.com/', 'https://www.google.com/', NULL, 'https://www.google.com/', NULL, NULL, NULL, NULL, '123456789', '2022-12-24 20:24:24', '2023-03-09 06:09:23', 'مرحبا بكم في موقع صالون السيدات لدينا. تحكم هذه الشروط والأحكام استخدامك لموقعنا ، ومن خلال الوصول إلى موقعنا الإلكتروني أو استخدامه ، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق على هذه الشروط والأحكام ، فيرجى عدم استخدام موقعنا.<br />\r\n<br />\r\nاستخدام الموقع<br />\r\nيمكنك استخدام موقعنا لأغراض مشروعة فقط. لا يجوز لك استخدام موقعنا الإلكتروني لأي غرض غير قانوني أو غير مصرح به. أنت توافق على الامتثال لجميع القوانين واللوائح المعمول بها عند استخدام موقعنا.<br />\r\n<br />\r\nالملكية الفكرية<br />\r\nجميع المحتويات الموجودة على موقعنا ، بما في ذلك النصوص والرسومات والشعارات والصور والبرامج ، هي ملك لصالون السيدات لدينا أو موردي المحتوى لدينا وهي محمية بقوانين حقوق النشر الدولية. لا يجوز لك إعادة إنتاج أو توزيع أو استخدام أي محتوى على موقعنا الإلكتروني دون إذن كتابي صريح منا.<br />\r\n<br />\r\nسياسة الخصوصية<br />\r\nنحن نأخذ خصوصيتك على محمل الجد. يرجى مراجعة سياسة الخصوصية الخاصة بنا ، والتي تشرح كيف نجمع معلوماتك الشخصية ونستخدمها ونحميها.<br />\r\n<br />\r\nسياسة الدفع والإلغاء<br />\r\nنحن نقبل الدفع مقابل خدمات الصالون لدينا من خلال طرق مختلفة ، والتي سيتم تحديدها على موقعنا. نحتفظ بالحق في تعديل سياسات التسعير والدفع الخاصة بنا في أي وقت. إذا كنت بحاجة إلى إلغاء موعد أو إعادة جدولته ، فيرجى القيام بذلك قبل 24 ساعة على الأقل لتجنب رسوم الإلغاء.<br />\r\n<br />\r\nإخلاء المسؤولية وحدودها<br />\r\nنحن نقدم موقعنا ومحتوياته على أساس &quot;كما هو&quot; و &quot;كما هو متاح&quot; ، ولا نقدم أي تعهدات أو ضمانات من أي نوع ، صريحة أو ضمنية ، بما في ذلك على سبيل المثال لا الحصر ضمانات القابلية للتسويق والملاءمة الغرض ، أو عدم الانتهاك. نحن لسنا مسؤولين عن أي أضرار تنشأ عن استخدامك لموقعنا أو المحتوى الموجود على موقعنا.<br />\r\n<br />\r\nالتعويض<br />\r\nأنت توافق على تعويض والدفاع عن الصالون النسائي الخاص بنا والشركات التابعة له والمسؤولين والمديرين والموظفين والوكلاء والموردين من أي وجميع المطالبات والمسؤوليات والأضرار والنفقات (بما في ذلك أتعاب المحاماة) الناشئة عن استخدامك لـ موقعنا أو انتهاكك لهذه الشروط والأحكام.', 'Welcome to our ladies salon website. These terms and conditions govern your use of our website, and by accessing or using our website you agree to be bound by these terms and conditions. If you do not agree to these terms and conditions, please do not use our site.<br />\r\n<br />\r\nSite use<br />\r\nYou may use our site for lawful purposes only. You may not use our website for any illegal or unauthorized purpose. You agree to comply with all applicable laws and regulations when using our site.<br />\r\n<br />\r\nintellectual property<br />\r\nAll content on our site, including text, graphics, logos, images and software, is the property of our ladies salon or our content suppliers and is protected by international copyright laws. You may not reproduce, distribute or use any content on our website without our express written permission.<br />\r\n<br />\r\nprivacy policy<br />\r\nWe take your privacy seriously. Please review our Privacy Policy, which explains how we collect, use and protect your personal information.<br />\r\n<br />\r\nPayment and cancellation policy<br />\r\nWe accept payment for our salon services through various methods, which will be specified on our website. We reserve the right to modify our pricing and payment policies at any time. If you need to cancel or reschedule an appointment, please do so at least 24 hours in advance to avoid a cancellation fee.<br />\r\n<br />\r\nDisclaimers and limitations<br />\r\nWe provide our site and its content on an &quot;as is&quot; and &quot;as available&quot; basis, and we make no representations or warranties of any kind, express or implied, including but not limited to warranties of merchantability, fitness for purpose, or non-infringement. We are not liable for any damages arising from your use of our site or the content on our site.<br />\r\n<br />\r\ncompensation<br />\r\nYou agree to indemnify and defend Our Ladies Salon and its affiliates, officers, directors, employees, agents and suppliers from any and all claims, liabilities, damages and expenses (including attorneys&#039; fees) arising from your use of our Site or your violation of these Terms and Conditions.', 'سياسة :<br />\r\nسياسة :<br />\r\nسياسة :<br />\r\nسياسة 4', 'policy:<br />\r\npolicy:<br />\r\npolicy:<br />\r\npolicy', 'استرجاع 1<br />\r\nاسترجاع 2<br />\r\nاسترجاع 3', 'pay back 1<br />\r\npay back 2', 'السبت   : 10:00 صباحا الى 06:00 مساء  <br />\r\nالاحد      : 02:00 مساء الى 10:00 مساء  <br />\r\nالاثنين    : 02:00 مساء الى 10:00 مساء  <br />\r\nالثلاثاء    : 02:00 مساء الى 10:00 مساء  <br />\r\nالاربعاء   : 02:00 مساء الى 10:00 مساء  <br />\r\nالخميس  : 01:00 مساء الى 09:00 مساء  <br />\r\nالجمعة : لا يوجد دوام', 'Saturday: 10:00 am to 6:00 pm <br />\r\nSunday: 02:00 pm to 10:00 pm <br />\r\nMonday: 2:00 pm to 10:00 pm <br />\r\nTuesday: 02:00 pm to 10:00 pm <br />\r\nWednesday: 02:00 pm to 10:00 pm <br />\r\nThursday: 01:00 pm to 09:00 pm <br />\r\nFriday: no hours');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `rule_id` varchar(255) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rule_id`, `remember_token`, `created_at`, `updated_at`, `mobile`, `address`) VALUES
(1, 'admin', 'admin@info.com', NULL, '$2y$10$AseCM.JomzAE4aysGNpOYeCxKEOdGRgzZKaAd5Z5se.Te/lorSZQC', '1', 'DzYJ76yO8VRY1u8mWTqZUPBbAwmD1IcMj0XWkQOn3u8OdMVWqigR0eHMlaHj', '2022-12-24 20:07:00', '2022-12-24 20:07:00', NULL, NULL),
(2, 'user', 'user@info.com', NULL, '$2y$10$PQqiyDgOnM03P/vhl3cU4uevew1tkbXpkIeaUNA3jwu8R8PpHRvUi', '0', NULL, '2023-01-14 13:13:37', '2023-01-14 17:48:06', '123456789', NULL),
(3, 'user1', 'user1@info.com', NULL, '$2y$10$ZdXz3ONGfDXFZpVi5baVx.nv/wu/YV0v3x5MAma2ZFzut6nsMdgFu', '0', NULL, '2023-01-14 17:11:27', '2023-01-14 17:11:27', '123456789', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_password_resets`
--

CREATE TABLE `user_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copouns`
--
ALTER TABLE `copouns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `copouns_copoun_name_unique` (`copoun_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_password_resets`
--
ALTER TABLE `user_password_resets`
  ADD KEY `user_password_resets_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `copouns`
--
ALTER TABLE `copouns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
