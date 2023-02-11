-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 sep. 2022 à 15:47
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bloger`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(20) NOT NULL,
  `paragraphe` mediumtext NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `genre` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `tags` text NOT NULL,
  `jaime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `paragraphe`, `date`, `genre`, `id_user`, `photo1`, `tags`, `jaime`) VALUES
(33, 'Dragon Docks Deliver', '<p>In 2002, the telescope got a name. NASA administrator Sean O&rsquo;Keefe broke a tradition of naming telescopes for scientists &mdash; the Hubble telescope, for instance, refers to the American astronomer Edwin Hubble &mdash; and instead honored an earlier administrator, James Webb, who was head of the space agency during the Apollo era. The choice was immediately unpopular with astronomers and has grown increasingly so. Last year,&nbsp;<a href=\"https://www.nature.com/articles/d41586-021-02678-1\" target=\"_blank\" rel=\"noopener\">1,200 astronomers signed a petition</a>&nbsp;to rename the telescope after claims that Webb either aided or chose to ignore the firing of gay government employees during the Lavender Scare. After an investigation, NASA announced in October that historians found no evidence warranting a name change.&nbsp;</p>\r\n<p>Various institutions, from the University of Arizona to the European Space Agency, signed up to build the cameras, spectrographs and coronagraphs that will swivel into place at the focal point of the optics, slicing and dicing different chunks of the pooled infrared light. In exchange, these institutional partners will command extensive telescope time.&nbsp;</p>\r\n<p>As for the sunshield, the flimsy material on which the infrared telescope&rsquo;s fate rests, the team quickly settled on Kapton, a slithery silver plastic that looks like the inside of a potato chip bag but has the thickness of a human hair. Since it might tear, the sunshield would need many layers for redundancy &mdash; the team decided on five &mdash; and the layers would have to be unfurled, separated and held taut by a system of booms, cables and strings. Propulsion systems and solar panels would go on the sunward side, and the optics and instruments, which must operate below minus 223 degrees Celsius, would huddle on the dark side. &ldquo;JWST has a lot of firsts, an awful lot of significant firsts,&rdquo; Menzel, the chief engineer, told me, &ldquo;but that sunshield is one of them.&rdquo;</p>\r\n<p>Menzel, who is thickset with a neatly clipped gray beard, oversees thousands of people&rsquo;s work on one of the most complicated engineering projects in history; he&rsquo;s also the type of person who tells you right away where they&rsquo;re from. That would be Elizabeth, New Jersey &mdash; Exit 13 off the turnpike &mdash; where his father drove a cab. On a recent Zoom call, Menzel bent his arm back and forth at the elbow to explain the challenge presented by the sunshield. &ldquo;If you take something rigid, like a door, and you build a nice hinge, you can predict the way that moves,&rdquo; he said. &ldquo;That&rsquo;s a piece of cake.&rdquo; He stopped bending his arm. &ldquo;Now you got blankets. They&rsquo;re floppy. Try to push on a blanket on your bed and predict the shape that it&rsquo;s going to go in. It&rsquo;s horrible. Same thing with a string &mdash; the strings that tension [the sunshield]. There&rsquo;s a million different ways that a string can move.&rdquo; It gets worse: &ldquo;Now put all this experience in zero-G, where that stuff can go in places you just don&rsquo;t want it to go.&rdquo; Smoothly unfolding the sunshield &ldquo;becomes a very tough problem.&rdquo;&nbsp;</p>\r\n<p>Around 2004, the NASA engineers Chuck Perrygo and Keith Parrish came into Menzel&rsquo;s office at Goddard and said they had a way to do it. Perrygo picked up a piece of paper on Menzel&rsquo;s desk and folded it into the shape of a Z. The sunshield could be folded into many more such zigzags, in what&rsquo;s sometimes called an accordion fold. &ldquo;I&rsquo;m pretty good at recognizing a bad answer, and I&rsquo;m pretty good at recognizing a right answer,&rdquo; Menzel told me, holding up a piece of paper he had folded into a Z shape. &ldquo;So we all saw that and thought, that&rsquo;s a way to pursue it.&rdquo; Northrop Grumman was separately coming to the same conclusion.&nbsp;</p>\r\n<p>The next question was how to hold the accordion fold in place until the sunshield was ready to unfurl. A Northrop Grumman engineer, Andy Tao, found the solution: 107 pins that retract like a cat&rsquo;s claws.&nbsp;</p>\r\n<p>The pin approach sprouted another tricky problem: pins make pinholes. If, after unfurling, pinholes on all five Kapton layers were to line up, this would let a sunbeam through, heating the optics. &ldquo;It was one of those arcane little details that you&rsquo;d never guess until you start getting into it and you start finding out, ah, Christ, five of the pinholes are lining right up and that&rsquo;s going to let sunlight right in,&rdquo; Menzel said. &ldquo;It doesn&rsquo;t sound like much, but it was driving Andy to drink. And God bless him, he figured it out.&rdquo; Tao diligently sought out a suitable configuration of pins so that the holes in the five slightly-different-size Kapton layers would never align from any angle.&nbsp;</p>', '2022-07-18', '5', 7, '1658103735_Mike-Menzel.jpg', 'Analytics, Data Lab, Data Lakes, Machine Learning, Spaces', 0),
(34, 'Mass and Angular Mom', '<p>ore than a century after Albert Einstein unveiled general relativity, his epic theory of gravity has passed every experimental test to which it has been subjected. General relativity has transformed our understanding of gravity, depicting it not as an attractive force between massive objects, as had long been held, but rather as a consequence of the way space and time curve in the presence of mass and energy. The theory has achieved stunning triumphs &mdash; from the confirmation in 1919 that light bends in the sun&rsquo;s gravitational field to 2019 observations that revealed the silhouette of a black hole. It might be surprising to hear, then, that general relativity is still a work in progress.</p>\r\n<p>Even though the equations Einstein introduced in 1915 concern the curvature induced by massive objects, the theory does not offer a simple or standard way of determining what the mass of an object is. Angular momentum &mdash; a measure of an object&rsquo;s rotational motion in space-time &mdash; is an even harder to define concept.</p>\r\n<p>Some of the difficulties stem from a feedback loop that is built into general relativity. Matter and energy curve the space-time continuum, but this curvature becomes a source of energy itself, which can cause additional curvature &mdash; a phenomenon sometimes referred to as the &ldquo;gravity of gravity.&rdquo; And there is no way to separate an object&rsquo;s intrinsic mass from the extra energy that comes from this nonlinear effect. Moreover, one cannot define momentum or angular momentum without first having a firm grip on mass.</p>\r\n<p>Einstein recognized the challenges involved in quantifying mass and never fully spelled out what mass is or how it can be measured. It was not until the late 1950s and early 1960s that the first rigorous definition was proposed. The physicists Richard Arnowitt, Stanley Deser, and Charles Misner&nbsp;<a href=\"https://journals.aps.org/pr/abstract/10.1103/PhysRev.116.1322\" target=\"_blank\" rel=\"noopener\">defined</a>&nbsp;the mass of an isolated object, such as a black hole, as viewed from almost infinitely far away, where space-time is almost flat and the object&rsquo;s gravitational influence approaches zero.</p>\r\n<p>Although this way of calculating mass (known after its authors as &ldquo;ADM mass&rdquo;) has proved useful, it doesn&rsquo;t allow physicists to quantify the mass within a finite region. Say, for instance, that they are studying two black holes that are in the process of merging, and they want to determine the mass of each individual black hole prior to the merger, as opposed to that of the system as a whole. The mass enclosed within any individual region &mdash; as measured from the surface of that region, where gravity and space-time curvature might be very strong &mdash; is called &ldquo;quasilocal mass.&rdquo;</p>\r\n<p>In 2008, the mathematicians&nbsp;<a href=\"http://www.math.columbia.edu/~mtwang/\" target=\"_blank\" rel=\"noopener\">Mu-Tao Wang</a>&nbsp;of Columbia University and&nbsp;<a href=\"https://www.math.harvard.edu/people/yau-shing-tung/\" target=\"_blank\" rel=\"noopener\">Shing-Tung Yau</a>, now a professor at Tsinghua University in China and an emeritus professor at Harvard University,&nbsp;<a href=\"https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.102.021101\" target=\"_blank\" rel=\"noopener\">advanced a definition of quasilocal mass</a>&nbsp;that has proved particularly fruitful. In 2015, it enabled them and a collaborator to&nbsp;<a href=\"https://link.springer.com/article/10.1007/s00220-015-2381-1\" target=\"_blank\" rel=\"noopener\">define</a>&nbsp;quasilocal angular momentum. And this spring, those authors and a fourth collaborator&nbsp;<a href=\"https://www.intlpress.com/site/pub/pages/journals/items/atmp/content/vols/0025/0003/a004/\" target=\"_blank\" rel=\"noopener\">published</a>&nbsp;the first-ever, long-sought definition of angular momentum that is &ldquo;supertranslation invariant,&rdquo; meaning it does not depend on where an observer is located or what coordinate system he or she chooses. With such a definition, observers can, in principle, take measurements of ripples in space-time generated by a rotating object and calculate the exact amount of angular momentum carried away from the object by these ripples, which are known as gravitational waves.</p>\r\n<p>&ldquo;It&rsquo;s a great result,&rdquo;&nbsp;<a href=\"https://lsa.umich.edu/math/people/faculty/lbieri.html\" target=\"_blank\" rel=\"noopener\">Lydia Bieri</a>, a mathematician and general relativity expert at the University of Michigan, said about the March 2022 paper, &ldquo;and a culmination of intricate mathematical investigations over several years.&rdquo; Indeed, the development of these facets of general relativity took not just years but many decades.</p>\r\n<h2><strong>Staying Quasilocal</strong></h2>\r\n<p>In the 1960s, Stephen Hawking came up with a definition of quasilocal mass that is still favored today in some circumstances owing to its simplicity. Seeking to calculate the mass enclosed by a black hole&rsquo;s event horizon &mdash; its invisible spherical boundary &mdash; Hawking showed that you can calculate the mass inside any sphere by determining the extent to which incoming and outgoing light rays are bent by the matter and energy contained within. While &ldquo;Hawking mass&rdquo; has the virtue of being relatively easy to compute, the definition only works either in a space-time that is spherically symmetric (an idealized condition, as nothing in the real world is perfectly round) or in a &ldquo;static&rdquo; (and rather boring) space-time where nothing changes in time.</p>\r\n<p>The search for a more versatile definition continued. In a lecture at Princeton University in 1979, the British mathematical physicist Roger Penrose, another pioneer of black hole physics, identified the task of characterizing quasilocal mass &mdash; &ldquo;where one does not need to go &lsquo;all the way to infinity&rsquo; in order for the concept to be meaningfully defined&rdquo; &mdash; as the number-one unsolved problem in general relativity. A definition of quasilocal angular momentum ranked second on Penrose&rsquo;s list.</p>\r\n<p>Earlier that year, Yau and his former student&nbsp;<a href=\"https://profiles.stanford.edu/richard-schoen\" target=\"_blank\" rel=\"noopener\">Richard Schoen</a>, who is now an emeritus professor at Stanford University,&nbsp;<a href=\"https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.43.1457\" target=\"_blank\" rel=\"noopener\">proved</a>&nbsp;a major prerequisite for establishing these quasilocal definitions. Namely, they showed that the ADM mass of an isolated physical system &mdash; its mass as measured from infinitely far away &mdash; can never be negative. The Schoen-Yau &ldquo;positive mass theorem&rdquo; constituted an essential first step for defining quasilocal mass and other physical quantities, because space-time and everything in it will be unstable if its energy has no floor but instead can turn negative and keep dropping without limit. (In 1982, Yau won a Fields Medal, the highest honor in mathematics, in part for his work on the positive mass theorem.)</p>\r\n<div id=\"component-62d4a7d1e0cd4\" class=\"\">\r\n<figure class=\"mb2 mt1 image--shortcode\">\r\n<div class=\"relative image mx0\">\r\n<div>&nbsp;</div>\r\n<picture><source srcset=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2022/07/Stephen_Hawking-1720x1220.jpg\"></picture>\r\n<div>&nbsp;</div>\r\n<picture><img class=\"block mxa fit-x fill-h fill-v is-loaded zoom large-print-img\" src=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2022/07/Stephen_Hawking-1720x1220.jpg\" alt=\"A black-and-white photo of a young Stephen Hawking in a wool suit, seated and smiling at a colleague\"></picture></div>\r\n<figcaption class=\"image__meta mt1\">\r\n<div class=\"caption wysiwyg h5 theme__anchors--solid fill-h post__aside__caption post__aside__caption--shortcode\">\r\n<p>The late British physicist Stephen Hawking, pictured in 1979, devised one of the first definitions of quasilocal mass. While it is appealingly straightforward to calculate, Hawking mass only works in simple scenarios.</p>\r\n</div>\r\n</figcaption>\r\n</figure>\r\n</div>', '2022-07-18', '5', 7, '1658103820_download.2jpg.jpg', '', 0),
(35, 'Quantum Algorithms C', '<p>&nbsp;surge of optimism followed. Perhaps, researchers thought, we&rsquo;ll be able to invent quantum algorithms that can solve a huge range of different problems.</p>\r\n<p>But progress stalled. &ldquo;It&rsquo;s been a bit of a bummer trajectory,&rdquo; said&nbsp;<a href=\"http://www.cs.cmu.edu/~odonnell/\" target=\"_blank\" rel=\"noopener\">Ryan O&rsquo;Donnell</a>&nbsp;of Carnegie Mellon University. &ldquo;People were like, &lsquo;This is amazing, I&rsquo;m sure we&rsquo;re going to get all sorts of other amazing algorithms.&rsquo; Nope.&rdquo; Scientists discovered dramatic speedups only for a single, narrow class of problems from within a standard set&nbsp;<a href=\"https://www.quantamagazine.org/a-short-guide-to-hard-problems-20180716/\">called NP</a>, meaning they had efficiently verifiable solutions &mdash; such as factoring.</p>\r\n<div id=\"component-62d4a88438f08\" class=\"\">\r\n<aside class=\"post__aside mb2 relative theme__anchors--none hide-on-print abstract-insight post__aside--right hide-on-print\">\r\n<div class=\"abstractions insights\">\r\n<div>\r\n<div class=\"relative image mx0\">\r\n<div>&nbsp;</div>\r\n<picture><source srcset=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2017/04/Abstractions-520x520.png\"></picture>\r\n<div>&nbsp;</div>\r\n<picture><img class=\"block mxa is-loaded border-gray1 px1\" src=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2017/04/Abstractions-520x520.png\"></picture></div>\r\n</div>\r\n<div class=\"post__content wysiwyg pangram medium o8 theme__anchors--solid scale4 mt1 mb1\"><em>Abstractions</em>&nbsp;navigates promising ideas in science and mathematics. Journey with us and join the conversation.</div>\r\n<div><hr class=\"black o8\">\r\n<h4 class=\"theme__accent mv1\">See all&nbsp;Abstractions blog</h4>\r\n</div>\r\n</div>\r\n</aside>\r\n</div>\r\n<p>That was the case for nearly three decades. Then in April, researchers&nbsp;<a href=\"https://arxiv.org/abs/2204.02063\" target=\"_blank\" rel=\"noopener\">invented</a>&nbsp;a fundamentally new kind of problem that a quantum computer should be able to solve exponentially faster than a classical one. It involves calculating the inputs to a complicated mathematical process, based solely on its jumbled outputs. Whether the problem stands alone or is the first in a new frontier of many others has yet to be determined.</p>\r\n<p>&ldquo;There is a sense of excitement,&rdquo; said&nbsp;<a href=\"http://people.csail.mit.edu/vinodv/\" target=\"_blank\" rel=\"noopener\">Vinod Vaikuntanathan</a>, a computer scientist at the Massachusetts Institute of Technology. &ldquo;A lot of people are thinking about what else is out there.&rdquo;</p>\r\n<p>Computer scientists try to understand what quantum computers do better by studying mathematical models that represent them. Often, they imagine a model of a quantum or classical computer paired with an idealized calculating machine called an oracle. Oracles are like simple mathematical functions or computer programs, taking in an input and spitting out a predetermined output. They might have a random behavior, outputting &ldquo;yes&rdquo; if the input falls within a certain random range (say, 12 to 67) and &ldquo;no&rdquo; if it doesn&rsquo;t. Or they might be periodic, so that an input between 1 to 10 returns &ldquo;yes,&rdquo; 11 to 20 yields &ldquo;no,&rdquo; 21 to 30 produces &ldquo;yes&rdquo; again, and so on.</p>\r\n<p>Let&rsquo;s say you have one of these periodic oracles and you don&rsquo;t know the period. All you can do is feed it numbers and see what it outputs. With those constraints, how fast could a computer find the period? In 1993, Daniel Simon, then at the University of Montreal, found that a quantum algorithm could calculate the answer to a closely related problem exponentially faster than any classical algorithm.</p>\r\n<div id=\"component-62d4a88445fbf\" class=\"\">\r\n<figure class=\"mb2 mt1 image--shortcode\">\r\n<div class=\"relative image mx0\">\r\n<div>&nbsp;</div>\r\n<picture><source srcset=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2022/07/QUANTUM_SUPREMACY2_560-Mobile.svg\" media=\"(max-width: 1000px)\"><source srcset=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2022/07/QUANTUM_SUPREMACY2_desktop.svg\"></picture>\r\n<div>&nbsp;</div>\r\n<picture><img class=\"block mxa is-loaded zoom large-print-img\" src=\"https://d2r55xnwy6nx47.cloudfront.net/uploads/2022/07/QUANTUM_SUPREMACY2_560-Mobile.svg\" alt=\"\"></picture></div>\r\n<figcaption class=\"image__meta mt1\">\r\n<div class=\"attribution theme__anchors--solid wysiwyg pangram h6 mb1 fill-h post__aside__attribution\">\r\n<p>Merrill Sherman/Quanta Magazine</p>\r\n</div>\r\n</figcaption>\r\n</figure>\r\n</div>\r\n<p>The result enabled Simon to determine one of the first hints of where dramatic superiority for quantum computers could be expected. But when he submitted his paper to a leading conference, it was rejected. The paper did, however, interest a junior member of the conference&rsquo;s program committee &mdash;&nbsp;<a href=\"https://math.mit.edu/~shor/\" target=\"_blank\" rel=\"noopener\">Peter Shor</a>, who at the time was at Bell Laboratories in New Jersey. Shor went on to find that he could adapt Simon&rsquo;s algorithm to calculate the period of an oracle, if it had one. Then he realized he could adapt the algorithm once again, to solve an equation that behaves similarly to a periodic oracle: the equation that describes factoring, which is periodic.</p>\r\n<p>Shor&rsquo;s result was historic. The quantum algorithm he discovered could rapidly reduce gigantic numbers into their constituent prime factors, something that no known classical algorithm can do. In the years that followed, researchers discovered other efficient quantum algorithms. Some of them, like Shor&rsquo;s algorithm, even provided exponential advantage, but no one could prove a dramatic quantum advantage on any NP problem that wasn&rsquo;t periodic.</p>\r\n<p>This dearth of progress led two computer scientists,&nbsp;<a href=\"https://www.scottaaronson.com/\" target=\"_blank\" rel=\"noopener\">Scott Aaronson</a>&nbsp;of the University of Texas, Austin, and&nbsp;<a href=\"http://home.lu.lv/~ambainis/\" target=\"_blank\" rel=\"noopener\">Andris Ambainis</a>&nbsp;of the University of Latvia, to make an observation. Proofs of quantum advantage always seemed dependent on oracles that had some kind of nonrandom structure, such as periodicity. In 2009, they&nbsp;<a href=\"https://arxiv.org/abs/0911.0996\" target=\"_blank\" rel=\"noopener\">conjectured</a>&nbsp;that there couldn&rsquo;t be dramatic speedups on NP problems that were random, or unstructured. No one could find an exception.</p>\r\n<p>Their conjecture put a bound on the powers of quantum computers. But it said only that there were no dramatic speedups for a specific type of unstructured NP problem &mdash; those with yes or no answers. If a problem involved figuring out more specific, quantitative answers, which is known as a search problem, the conjecture didn&rsquo;t apply.</p>', '2022-07-18', '5', 26, '1658104016_James-Webb-Space-Telescope-(JWST).png', 'Analytics, Data Lab, Data Lakes, Machine Learning', 0),
(36, 'Senior Project Scien', '<p>eople around the world joined together in excitement as the&nbsp;<a href=\"https://www.nasa.gov/webbfirstimages\">first color scientific images and spectra</a>&nbsp;from NASA&rsquo;s James Webb Space Telescope were revealed this week. Webb is&nbsp;<a href=\"https://blogs.nasa.gov/webb/2022/07/11/nasas-webb-telescope-is-now-fully-ready-for-science/\">fully commissioned</a>&nbsp;and already embarked on its&nbsp;<a href=\"https://www.stsci.edu/jwst/science-execution/approved-programs\">first year of peer-reviewed science programs</a>. We asked Webb senior project scientist John Mather to reflect on reaching this moment after 25 years, taking Webb from an initial spark of an idea to the world&rsquo;s premier space observatory.</p>\r\n<figure id=\"attachment_847\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-847\"><img class=\"size-large wp-image-847\" src=\"https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-1024x683.jpg\" sizes=\"(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px\" srcset=\"https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-1024x683.jpg 1024w, https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-300x200.jpg 300w, https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-768x512.jpg 768w, https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-1536x1024.jpg 1536w, https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-2048x1365.jpg 2048w, https://blogs.nasa.gov/webb/wp-content/uploads/sites/326/2022/07/52032372264_f35ecd4baa_o-1200x800.jpg 1200w\" alt=\"\" width=\"840\" height=\"560\">\r\n<figcaption id=\"caption-attachment-847\" class=\"wp-caption-text\">Credit: NASA/Taylor Mickal</figcaption>\r\n</figure>\r\n<p>&ldquo;It was worth the wait! Our immense golden telescope is seeing where none have seen before, discovering what we never knew before, and we are proud of what we have done. It&rsquo;s our day to thank the people who made it possible, from the scientific visionaries in 1989 and 1995, to the 20,000 engineers, technicians, computer programmers, and scientists who did the work, and to the representatives of the people in the U.S., Europe, and Canada, who had faith in us and supported us. And special thanks to Senator Barbara Mikulski, who saved not one but two telescopes, with her inspiration and determination that setbacks are never the end. And special thanks to Goddard Project Manager Bill Ochs and Northrop Grumman Project Manager Scott Willoughby, who together pulled us all through every challenge to complete success.</p>\r\n<p>&ldquo;Already we have stood on the shoulders of giants like the&nbsp;<a href=\"https://www.nasa.gov/mission_pages/hubble/main/index.html\">Hubble</a>&nbsp;and&nbsp;<a href=\"https://www.nasa.gov/mission_pages/spitzer/main/index.html\">Spitzer</a>&nbsp;space telescopes, and seen farther. We have seen&nbsp;<a href=\"https://webbtelescope.org/contents/media/images/2022/035/01G7F33FYJY94B9H7FW1APV030\">distant galaxies</a>, as they were when the universe was less than a billion years old, and we&rsquo;re just beginning the search. We have seen&nbsp;<a href=\"https://webbtelescope.org/contents/media/images/2022/034/01G7DA5ADA2WDSK1JJPQ0PTG4A\">galaxies colliding and merging</a>, revealing their chemical secrets. We have seen one&nbsp;<a href=\"https://webbtelescope.org/contents/media/images/2022/034/01G7FG9P3BVP4CPK1QHX0RG5XN\">black hole close up</a>, in the nucleus of a nearby galaxy, and measured the material escaping from it. We&rsquo;ve seen the debris when a&nbsp;<a href=\"https://webbtelescope.org/contents/media/images/2022/033/01G709QXZPFH83NZFAFP66WVCZ\">star exploded</a>, liberating the chemical elements that will build the next generations of stars and planets. We have started a search for Earth 2.0, by watching a&nbsp;<a href=\"https://webbtelescope.org/contents/media/images/2022/032/01G72W1XZK6A79RJK2Z93D58CD?page=2&amp;filterUUID=91dfa083-c258-4f9f-bef1-8f40c26f4c97\">planet transiting</a>&nbsp;in front of its star, and measuring the molecules in its atmosphere.</p>\r\n<p>&ldquo;What comes next? All the tools are working, better than we hoped and promised. Scientific observations, proposed years ago, are being made as we speak. We want to know: Where did we come from? What happened after the big bang to make galaxies and stars and black holes? We have predictions and guesses, but astronomy is an observational science, full of surprises. What are the dark matter and dark energy doing? How do stars and planets grow inside those beautiful clouds of gas and dust? Do the rocky planets we can observe with Webb have any atmosphere at all, and is there water there? Are there any planetary systems like our solar system? So far we have found exactly none. We&rsquo;ll look at our&nbsp;<a href=\"https://blogs.nasa.gov/webb/2022/07/14/webb-images-of-jupiter-and-more-now-available-in-commissioning-data/\">own solar system</a>&nbsp;with new infrared eyes, looking for chemical traces of our history, and tracking down mysteries like Jupiter&rsquo;s Great Red Spot, composition of the ocean under the ice of Europa, and the atmosphere of Saturn&rsquo;s giant moon Titan. We&rsquo;ll be ready to study the next interstellar comet.</p>\r\n<p>&ldquo;With the precise&nbsp;<a href=\"https://blogs.nasa.gov/webb/2021/12/25/lift-off/\">launch</a>&nbsp;on Christmas morning 2021, we look forward to&nbsp;<a href=\"https://blogs.nasa.gov/webb/2021/12/29/nasa-says-webbs-excess-fuel-likely-to-extend-its-lifetime-expectations/\">20 years</a>&nbsp;of operation before we run out of propellant. Though we suffer the pings of tiny&nbsp;<a href=\"https://blogs.nasa.gov/webb/2022/06/08/webb-engineered-to-endure-micrometeoroid-impacts/\">micrometeoroids</a>, so tiny you couldn&rsquo;t feel one if you had it in your fingers, we think the telescope can meet its original performance likely long beyond its five-year design life. In 2027 we will launch the&nbsp;<a href=\"https://roman.gsfc.nasa.gov/\">Nancy Grace Roman Space Telescope</a>, which will scan vast areas of the sky for new fascinating targets for Webb, while also hunting for the effects of dark matter and dark energy. We know the Webb images will rewrite our textbooks, and we hope for a new discovery, something so important that our view of the universe will be overturned once again.</p>\r\n<p><em>Webb was worth the wait!&rdquo;</em></p>\r\n<p>&ndash; John Mather, Webb senior project scientist, NASA Goddard</p>', '2022-07-18', '1', 26, '1658104177_1614776.jpg', 'Tech, Ai, Machine Learning', 0),
(37, 'ARLO GO 2 OR EUFY 4G', '\r\n\r\n<p id=\"xufsGo\">The Arlo can record and livestream in up to 1080p HD video, whereas Eufy is capable of 2K. The Arlo has 12x digital zoom for getting a better look at any action compared to Eufy&rsquo;s 4x, but with the higher resolution of the Eufy, this difference isn&rsquo;t as large in practice as on paper. The Eufy is slightly smaller and lighter, but they both have the same massive 13,000mAh battery capacity, and both have optional solar panels to keep the batteries topped up.</p>\r\n<p id=\"L7dfkg\">The Arlo also includes a Wi-Fi radio, meaning it can double as a standard security camera if and when you have access to Wi-Fi and don&rsquo;t want to pay for cellular data. This is also handy as a fail-safe option in a home security camera setup, meaning you&rsquo;ll still have at least one camera you can access remotely in a Wi-Fi or power outage. The Eufy only works on cellular.</p>\r\n<div class=\"m-ad m-ad__dynamic_ad_unit m-ad__desktop_feature_body\" data-concert-ads-name=\"desktop_feature_body_dynamic\">\r\n<div id=\"div-gpt-ad-desktop_feature_body_dynamic\" class=\"dynamic-js-slot up-show\" data-google-query-id=\"CKb50fmXgfkCFcEIBgAdWlED1g\"></div>\r\n</div>', '2022-07-18', '1', 26, '1658104364_VRG_ILLO_226066_Arlo_vs_Eufy_s.0.jpg', 'Analytics, Data Lab, Data Lakes, Machine Learning', 0),
(38, 'The American Associa', '\r\n<p>There are four categories of Basic Individual membership:</p>\r\n<ul>\r\n<li>Student: For active high school, undergraduate, and graduate students</li>\r\n<li>New Professional: For museum professionals in their first three years</li>\r\n<li>Individual Basic: For people during their career</li>\r\n<li>Retired: A way to stay up to date with the field after exiting the workforce</li>\r\n</ul>\r\n<p>If you are interested in joining AASLH as an Individual member, please reach out to the Membership Team at&nbsp;<a href=\"mailto:membership@aaslh.org\">membership@aaslh.org</a>&nbsp;or click on the button below.</p>\r\n<p>Thank you to all of our members!</p>\r\n', '2022-07-18', '5', 26, '1658104702_American-History-Blogs.jpg', 'Aaslhblog, Annual Meeting, News, Professional Development, Programming', 0),
(39, 'Upgrade Costs Less T', '<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p>If you&rsquo;re making a list of the things that have changed in the past two-ish years, it&rsquo;s accurate enough to just write &ldquo;EVERYTHING&rdquo; in all caps. If you want to write two words, you could add &ldquo;our workspaces&rdquo; too. The definition of &ldquo;going to the office&rdquo; has shifted, and a lot of people are still alternating between a commute that stretches through several stoplights and one that involves walking down the hall.</p>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p>What hasn&rsquo;t changed is our need to stay organized and on top of everything on our eternally unfinished to-do lists. We&rsquo;ve all relied on&nbsp;<a href=\"https://www.post-it.com/3M/en_US/post-it/\" target=\"_blank\" rel=\"nofollow noopener sponsored\">Post-it&reg; Notes</a>&nbsp;for ages to mark dates on our calendars and stick reminders to the refrigerator. Now, Post-it Brand has a new way to help us tackle tasks: They partnered with the Pantone Color Institute to select colors to support and encourage every work mood and brighten up whichever surfaces we&rsquo;re putting our laptops and planners on these days. The result?&nbsp;<a href=\"https://www.post-it.com/3M/en_US/post-it/ideas/color/collections/\" target=\"_blank\" rel=\"nofollow noopener sponsored\">Eleven new color collections</a>&nbsp;specifically designed to help us be more productive, feel inspired, and even keep our cool at work.</p>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__image\">\r\n<figure class=\"jsx-4058332174 Figure\">\r\n<div class=\"jsx-4058332174 Figure__image\"><img class=\"Figure__image--original\" src=\"https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_730/cs%2F2022%2FAT%2FPost-it%2F654-5SSUC_CRIP_2022_RGB\" alt=\"Post Image\">\r\n<div class=\"jsx-1289453721 PinItButton__button\">&nbsp;</div>\r\n<div class=\"jsx-233869126 Placeholder Figure__placeholder\">&nbsp;</div>\r\n</div>\r\n<div class=\"jsx-3826189862 Figure__image-toolbar\" data-google-interstitial=\"false\">&nbsp;</div>\r\n<figcaption class=\"jsx-842745426 ImageCaption\">\r\n<div class=\"jsx-842745426 ImageCaption__credit\">Credit: Post-it Brand</div>\r\n</figcaption>\r\n</figure>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__heading Post__html\">\r\n<div class=\"Html\">\r\n<h2>Find an Unexpected Productivity Boost</h2>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p>The secret to getting through the dreaded 3 p.m. slump? The vibrant&nbsp;<a href=\"https://www.post-it.com/3M/en_US/post-it/products/?N=4327+3288493859+3294529207+3294857497&amp;rt=r3\" target=\"_blank\" rel=\"nofollow noopener sponsored\">Energy Boost</a>&nbsp;collection, which can brighten your mood even on the rainiest weekdays. (And when you&rsquo;re stuck on the World&rsquo;s Longest Video Call.) Vital Orange, Tropical Pink, Limeade, Blue Paradise, and Sunnyside will have you alert, focused, and full of energy to finish the workday strong.</p>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__image\">\r\n<figure class=\"jsx-4058332174 Figure\">\r\n<div class=\"jsx-4058332174 Figure__image\"><img class=\"Figure__image--original\" src=\"https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_913/cs%2F2022%2FAT%2FPost-it%2Fsupernova-neons\" alt=\"Post Image\">\r\n<div class=\"jsx-1289453721 PinItButton__button\">&nbsp;</div>\r\n<div class=\"jsx-2624799366 Placeholder Figure__placeholder\">&nbsp;</div>\r\n</div>\r\n<div class=\"jsx-3826189862 Figure__image-toolbar\" data-google-interstitial=\"false\"><a class=\"jsx-3826189862 Figure__image-save-image button false\" href=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759\"><span class=\"jsx-3826189862\">SAVE</span></a><a class=\"jsx-1289453721 PinItButton PinItButton--imageActions\" href=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759#pinit\" data-pin-url=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759?utm_source=pinterest&amp;utm_medium=tracking&amp;utm_campaign=inline-img-share\" data-pin-do=\"buttonPin\" data-pin-tag=\"inline\" data-pin-custom=\"true\" data-pin-media=\"https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,w_1000/cs%2F2022%2FAT%2FPost-it%2Fsupernova-neons\" data-pin-description=\"Post Image\" data-gtm-placement=\"inline\" data-gtm-ignore-outbound-link=\"true\" aria-label=\"Pin It button\"><span class=\"jsx-1289453721\">PIN IT</span></a></div>\r\n<div class=\"jsx-4058332174 Figure__image-info\">\r\n<div class=\"jsx-4058332174 Figure__image-info\">&nbsp;</div>\r\n</div>\r\n<figcaption class=\"jsx-842745426 ImageCaption\">\r\n<div class=\"jsx-842745426 ImageCaption__credit\">&nbsp;</div>\r\n</figcaption>\r\n</figure>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__heading Post__html\">\r\n<div class=\"Html\">\r\n<h2>Nurture Your Ideas with Neon</h2>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p>Different shades can spark different ideas. Sometimes, all it takes to feel more creative and inspired is a bright pop of color. The eye-catching&nbsp;<a href=\"https://www.post-it.com/3M/en_US/post-it/products/~/Post-it-Products/Supernova-Neons/?N=4327+3288493735+3294529207+3294857497&amp;rt=r3\" target=\"_blank\" rel=\"nofollow noopener sponsored\">Supernova Neons</a>&nbsp;can help foster creativity and set the stage for your next big idea. Aqua Splash, Acid Lime, Guava, Tropical Pink, and Iris Infusion also ensure that you don&rsquo;t overlook the note you left for yourself yesterday.</p>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__image\">\r\n<figure class=\"jsx-4058332174 Figure\">\r\n<div class=\"jsx-4058332174 Figure__image\"><img class=\"Figure__image--original\" src=\"https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_913/cs%2F2022%2FAT%2FPost-it%2Foasis\" alt=\"Post Image\">\r\n<div class=\"jsx-1289453721 PinItButton__button\">&nbsp;</div>\r\n<div class=\"jsx-2624799366 Placeholder Figure__placeholder\">&nbsp;</div>\r\n</div>\r\n<div class=\"jsx-3826189862 Figure__image-toolbar\" data-google-interstitial=\"false\"><a class=\"jsx-3826189862 Figure__image-save-image button false\" href=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759\"><span class=\"jsx-3826189862\">SAVE</span></a><a class=\"jsx-1289453721 PinItButton PinItButton--imageActions\" href=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759#pinit\" data-pin-url=\"https://www.apartmenttherapy.com/which-post-it-note-colors-increase-productivity-creativity-relaxation-37065759?utm_source=pinterest&amp;utm_medium=tracking&amp;utm_campaign=inline-img-share\" data-pin-do=\"buttonPin\" data-pin-tag=\"inline\" data-pin-custom=\"true\" data-pin-media=\"https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,w_1000/cs%2F2022%2FAT%2FPost-it%2Foasis\" data-pin-description=\"Post Image\" data-gtm-placement=\"inline\" data-gtm-ignore-outbound-link=\"true\" aria-label=\"Pin It button\"><span class=\"jsx-1289453721\">PIN IT</span></a></div>\r\n<div class=\"jsx-4058332174 Figure__image-info\">\r\n<div class=\"jsx-4058332174 Figure__image-info\">&nbsp;</div>\r\n</div>\r\n<figcaption class=\"jsx-842745426 ImageCaption\">\r\n<div class=\"jsx-842745426 ImageCaption__credit\">Credit: Post-it Brand</div>\r\n</figcaption>\r\n</figure>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__heading Post__html\">\r\n<div class=\"Html\">\r\n<h2>Keep Calm and Remember You&rsquo;re on Mute</h2>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p>When you feel a moment of stress coming on at work, a little color therapy can go a long way. Enter: the soothing blues and greens of the&nbsp;<a href=\"https://www.post-it.com/3M/en_US/post-it/products/?N=4327+3288491933+3294529207+3294857497&amp;rt=r3\" target=\"_blank\" rel=\"nofollow noopener sponsored\">Oasis</a>&nbsp;collection. The chill hues of Washed Denim, Fresh Mint, Limeade, Lucky Clover, and Sea Glass can remind you to stay calm and remember to breathe, even if you&rsquo;re jotting down a reminder for an overdue dental appointment. Plus, anything that can make you feel more centered in the middle of the World&rsquo;s Second-Longest Video Call is definitely worth keeping on your desk.</p>\r\n</div>\r\n</div>\r\n<div class=\"jsx-3718090029 Post__item Post__html\">\r\n<div class=\"Html\">\r\n<p><a href=\"https://www.post-it.com/3M/en_US/post-it/ideas/color/\" target=\"_blank\" rel=\"nofollow noopener sponsored\">With 11 new Post-it Note color collections to choose from, you can match them to your mood and to the vibe you&rsquo;d like to bring to your workspace &mdash; wherever and whatever that looks like.</a></p>\r\n</div>\r\n</div>', '2022-07-18', '6', 26, '1658105146_2022_SSNE_654_APP_01_RGB.jpeg', '', 0),
(40, 'larache ', '<h1 data-key=\"378864\" data-year=\"2022\">arache : Un nouveau d&eacute;part de feu &agrave; Mdacher</h1>\r\n<div class=\"row mx-1\">\r\n<div class=\"col-lg-7 col-12 float-left text-left\">\r\n<p class=\"author\"><img src=\"https://s1.lematin.ma/files/lematin/images/articles/generale/lematin.jpg\" alt=\"\">&nbsp;LE MATIN&nbsp;<time>23 juillet 2022 &agrave; 20:09</time><span id=\"pageview\"></span></p>\r\n</div>\r\n<div class=\"col-lg-5 col-12 float-right text-right\">\r\n<div id=\"st-1\" class=\"sharethis-inline-share-buttons st-left  st-inline-share-buttons st-animated\">\r\n<div class=\"st-btn st-first st-remove-label\" data-network=\"sharethis\"><img src=\"https://platform-cdn.sharethis.com/img/sharethis.svg\" alt=\"sharethis sharing button\"></div>\r\n<div class=\"st-btn st-remove-label\" data-network=\"twitter\"><img src=\"https://platform-cdn.sharethis.com/img/twitter.svg\" alt=\"twitter sharing button\"></div>\r\n<div class=\"st-btn st-remove-label\" data-network=\"facebook\"><img src=\"https://platform-cdn.sharethis.com/img/facebook.svg\" alt=\"facebook sharing button\"></div>\r\n<div class=\"st-btn st-remove-label\" data-network=\"whatsapp\"><img src=\"https://platform-cdn.sharethis.com/img/whatsapp.svg\" alt=\"whatsapp sharing button\"></div>\r\n<div class=\"st-btn st-last st-remove-label\" data-network=\"linkedin\"><img src=\"https://platform-cdn.sharethis.com/img/linkedin.svg\" alt=\"linkedin sharing button\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><img class=\"d-block w-100\" src=\"https://static.lematin.ma/files/lematin/images/articles/2022/07/07686f14992d8607fbea91bdafd74688.jpg\" alt=\"Larache : Un nouveau d&eacute;part de feu &agrave; Mdacher\"></p>\r\n<div class=\"card-body p-2\">\r\n<div class=\"podcast\">\r\n<div class=\"podcast__meta\"><a class=\"artwork\" href=\"https://lematin.ma/express/2022/larache-nouveau-depart-feu-mdacher/378864.html\"><img src=\"https://s1.lematin.ma/cdn/img/podnews-lematin-1.jpg\" alt=\"\"></a><span class=\"mejs__offscreen\">Audio Player</span>\r\n<div id=\"mep_0\" class=\"mejs__container mejs__container-keyboard-inactive mejs__audio\" tabindex=\"0\" role=\"application\" aria-label=\"Audio Player\">\r\n<div class=\"mejs__inner\">\r\n<div class=\"mejs__mediaelement\">&nbsp;</div>\r\n<div class=\"mejs__layers\">&nbsp;</div>\r\n<div class=\"mejs__controls\">\r\n<div class=\"mejs-prepended-buttons\">\r\n<div class=\"mejs__button mejs__playpause-button mejs__play\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2022-08-05', '6', 7, '1659722168_Screenshot_2.png', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `categorie`) VALUES
(1, 'Technologie'),
(5, 'Espace'),
(6, 'Générale'),
(8, 'Femmes');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `commentaire` varchar(5000) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comment_user`
--

CREATE TABLE `comment_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `commentaire` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `mdp`, `photo`) VALUES
(1, 'kaddari', 'ziad', 'ziad@gmail.com', 'ziad123', ''),
(2, 'chakir', 'ismail', 'ismail@gmail.com', 'chakir123', ''),
(3, 'xxx', 'xxx', 'xxx', 'xxx', ''),
(4, 'gdfg', 'dfgdf', 'sdurant@dfgdfg', 'sdurantdfgdf', ''),
(5, 'gdfg', 'dfgdf', 'sdurant@dfgdfg', 'sdurantdfgdf', ''),
(6, 'saffat', 'mohamed', 'saffat@gmail.com', 'azerty', ''),
(7, 'xxx', 'xxx', 'xxx', 'xxx', ''),
(8, 'azerty', 'azerty', 'azerty@azerty', 'azerty', ''),
(9, 'azerty', 'azerty', 'azerty@azerty', 'azerty', ''),
(10, 'najlaa', '3amyaaa', 'chaimaa@haifass', 'rachid', ''),
(11, 'qwerty', 'qwerty', 'qwerty@qwerty', 'qwerty', ''),
(12, 'aaaaaaaa', 'aaaaaaaaaaaaaa', 'sdurant@aaaaaaaaa', 'sdurant', ''),
(13, 'zzzzzzzzzzz', 'zz', 'sdurantzz@zzzzzzzzz', 'sdurantzz', ''),
(14, 'zzzzzzzzzzz', 'zz', 'sdurantzz@zzzzzzzzz', 'sdurantzz', ''),
(15, 'zzzzzz', 'zzzzzzzzzzzzzzzz', 'sdurant@zzzzzzz', 'zzzzzzzzzzzzzzzz', ''),
(16, 'zzzzzz', 'zzzzzzzzzzzzzzzz', 'sdurant@zzzzzzz', 'zzzzzzzzzzzzzzzz', ''),
(17, 'ghfghf', 'fghfgh', 'sdurant@fghfgh', 'fghfgh', ''),
(18, 'ghfghf', 'fghfgh', 'sdurant@fghfgh', 'fghfgh', ''),
(19, 'azerty', 'azerty', 'sdurant@azerty', 'azerty', ''),
(20, 'zzzzzzzzz', 'zzzz', 'sdurant@zzzzzzzzz', 'sdurantzzz', '1646125563_logo.jpg'),
(21, 'zzzzzzzzz', 'zzzz', 'sdurant@zzzzzzzzz', 'sdurantzzz', '1646125647_logo.jpg'),
(22, 'youssra', 'youssra', 'youssra@gmail.com', 'yousra123', '1646125829_logo.jpg'),
(23, 'cha3kouk', 'cha3kouk', 'cha3kouk@cha3kouk', 'cha3kouk', '../../assets/photos/_1646297521_logo.jpg'),
(24, 'cha3kouk', 'cha3kouk', 'cha3kouk@cha3kouk', 'cha3kouk', '../../assets/photos/_1646297840_Sans titre.png'),
(25, 'kha3kouk', 'kha3kouk', 'kha3kouk@kha3kouk', 'sdurant', '_1646298041_Sans titre.png'),
(26, 'dsadas', 'dsadasd', 'oufkir@oufkir.com', '123', '_1657919755__1653061903_2dCharacter.jpg'),
(27, 'sssssssssssssssss', 'wwwwwwwwwwwwwwwwww', 'ss@ss', '123', '_1657919873__1653139796_car-6.jpg'),
(28, 'dsadasd', 'dasdasdas', 'ss@ss', '123', '_1657919996__1653061727_bg_3.jpg'),
(29, 'dasd', 'dqwdqwd', 'ss@ss', '123', '_1657920140__1653142527_loc.png'),
(30, 'dsadsad', 'sadasdasdsada', 'ss@ss', '123', '_1657920277__1653651996_person_3.jpg'),
(31, 'dsadasd', 'dsadasd', 'ss@ss', '123', '_1657920316__1653062464_about.jpg'),
(32, 'dsadasd', 'dsadasd', 'ss@ss', '123', '_1657920347__1653062464_about.jpg'),
(33, 'dasdqwdqwdqwd', 'dwqdqwwwww', 'ss@ss', '123', '_1657920390__1652997928_bg_2.jpg'),
(34, 'dqwdwqq', 'dwqqwddwq', 'ss@ss', '123', '_1657920557__1652998054_bg_1.jpg'),
(35, 'dwqdqdqw', 'wwwwwwwwwwww', 'ss@ss', '123', '_1657920722__1653000482_car-5.jpg'),
(36, 'dqwd', 'wqdwqd', 'ss@ss', '123', '_1657921375__1652998054_bg_1.jpg'),
(37, 'dqwdqwq', 'sdadasdsa', 'ss@ss', '123', '_1657921494__1653062109_car-1.jpg'),
(38, 'dwqdqwdqw', 'dwqdqwdqw', 'ss@ss', '123', '_1657921564__1653000482_car-5.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `comment_user`
--
ALTER TABLE `comment_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comment_user`
--
ALTER TABLE `comment_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `comment_user`
--
ALTER TABLE `comment_user`
  ADD CONSTRAINT `comment_user_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `comment_user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
