# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Book.destroy_all

users = User.create!(
  [
    {
      username: 'chao',
      password: 'password',
      email: 'mailbox.chao.cao@gmail.com',
    },

    {
      username: 'demouser',
      password: 'password',
      email: 'demouser@demo.user',
    },
  ]
)

books = Book.create!(
  [
    {
      title: '100 Years of Solitude',
      author: 'Gabriel Garcia Marquez',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/61O-ltKJb9L._SX330_BO1,204,203,200_.jpg',
      description: "One Hundred Years of Solitude tells the story of the rise and fall, birth and death of the mythical town of Macondo through the history of the Buendia family. Inventive, amusing, magnetic, sad, and alive with unforgettable men and women—brimming with truth, compassion, and a lyrical magic that strikes the soul—this novel is a masterpiece in the art of fiction.",
      publish_date: 'May 30, 1967',

    },
    {
      title: 'The Goldfinch',
      author: 'Donna Tartt',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41p4amaYISL._SX317_BO1,204,203,200_.jpg',
      description: "Theo Decker, a 13-year-old New Yorker, miraculously survives an accident that kills his mother. Abandoned by his father, Theo is taken in by the family of a wealthy friend. Bewildered by his strange new home on Park Avenue, disturbed by schoolmates who don't know how to talk to him, and tormented above all by his longing for his mother, he clings to the one thing that reminds him of her: a small, mysteriously captivating painting that ultimately draws Theo into the underworld of art.

      As an adult, Theo moves silkily between the drawing rooms of the rich and the dusty labyrinth of an antiques store where he works. He is alienated and in love--and at the center of a narrowing, ever more dangerous circle.

      The Goldfinch is a mesmerizing, stay-up-all-night and tell-all-your-friends triumph, an old-fashioned story of loss and obsession, survival and self-invention, and the ruthless machinations of fate.",
      publish_date: 'September 23, 2013',
    },
    {
      title: 'Bel Canto',
      author: 'Ann Patchett',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51LOpWsGN5L._SX329_BO1,204,203,200_.jpg',
      description: 'Ann Pratchett’s award winning, New York Times bestselling Bel Canto balances themes of love and crisis as disparate characters learn that music is their only common language. As in Patchett’s other novels, including Truth & Beauty and The Magician’s Assistant, the author’s lyrical prose and lucid imagination make Bel Canto a captivating story of strength and frailty, love and imprisonment, and an inspiring tale of transcendent romance.',
      publish_date: '2001',
    },
    {
      title: 'These Granite Islands',
      author: 'Sarah Stonich',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51siUBBPq8L._SY344_BO1,204,203,200_QL70_.jpg',
      description: 'These Granite Islands is an arresting novel about a woman who, on her deathbed, recalls the haunting and fateful summer of 1936, a summer that forever changed her life. Sarah Stonich’s debut novel, set on the Iron Range of Minnesota, is an intimate and gripping story of a friendship, a portrait of marriage, and a meditation on the tragedy of loss.',
      publish_date: '2001',
    },
    {
      title: 'The Refugees',
      author: 'Viet Thanh Nguyen',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51yC10bJH-L._SX329_BO1,204,203,200_.jpg',
      description: 'With the same incisiveness as in The Sympathizer, in The Refugees Viet Thanh Nguyen gives voice to the hopes and expectations of people making life-changing decisions to leave one country for another, and the rifts in identity, loyalties, romantic relationships, and family that accompany relocation. From a young Vietnamese refugee who suffers profound culture shock when he comes to live with two gay men in San Francisco, to a woman whose husband is suffering from dementia and starts to confuse her for a former lover, to a girl living in Ho Chi Minh City whose older half-sister comes back from America having seemingly accomplished everything she never will, the stories are a captivating testament to the dreams and hardships of migration.',
      publish_date: 'February 2017',
    },
    {
      title: 'All the Light We Cannot See',
      author: 'Anthony Doerr',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51tjJGTkUhL._SX326_BO1,204,203,200_.jpg',
      description: 'Marie-Laure lives in Paris near the Museum of Natural History, where her father works. When she is twelve, the Nazis occupy Paris and father and daughter flee to the walled citadel of Saint-Malo, where Marie-Laure’s reclusive great uncle lives in a tall house by the sea. With them they carry what might be the museum’s most valuable and dangerous jewel.

      In a mining town in Germany, Werner Pfennig, an orphan, grows up with his younger sister, enchanted by a crude radio they find that brings them news and stories from places they have never seen or imagined. Werner becomes an expert at building and fixing these crucial new instruments and is enlisted to use his talent to track down the resistance. Deftly interweaving the lives of Marie-Laure and Werner, Doerr illuminates the ways, against all odds, people try to be good to one another.',
      publish_date: 'May 6, 2014',
    },
    {
      title: 'Perfume River',
      author: 'Robert Olen Butler',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/515dD-W9ZeL._SX336_BO1,204,203,200_.jpg',
      description: 'Robert Quinlan is a seventy-year-old historian teaching at Florida State University, where his wife Darla is also tenured. Their marriage, forged in the fervor of anti-Vietnam War protests, now bears the fractures of time, with the couple trapped in an existence of morning coffee, solitary jogging, and separate offices. The cracks in Robert and Darla’s relationship remain under the surface, whereas the divisions in Robert’s family are more apparent: he has almost no relationship with his brother Jimmy, who became estranged from the family as the Vietnam War intensified. As Robert and Jimmy’s father, who is a veteran of World War II, draws near to the end of his life, aftershocks of war ripple across the family once again, with Jimmy refusing to appear at his father’s bedside. And an unstable homeless man, whom Robert meets at a restaurant and at first takes to be a fellow Vietnam veteran, turns out to have a deep impact not just on Robert, but on all of the people closest to him.',
      publish_date: 'September 06, 2016',
    },
    {
      title: 'We Were the Lucky Ones',
      author: 'Georgia Hunter',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51L72yLA2CL._SX331_BO1,204,203,200_.jpg',
      description: 'It is the spring of 1939 and three generations of the Kurc family are doing their best to live normal lives, even as the shadow of war grows closer. The talk around the family Seder table is of new babies and budding romance, not of the increasing hardships threatening Jews in their hometown of Radom, Poland. But soon the horrors overtaking Europe will become inescapable and the Kurcs will be flung to the far corners of the world, each desperately trying to navigate his or her own path to safety.

      As one sibling is forced into exile, another attempts to flee the continent, while others struggle to escape certain death, either by working grueling hours on empty stomachs in the factories of the ghetto or by hiding as gentiles in plain sight. Driven by an unwavering will to survive and by the fear that they may never see one another again, the Kurcs must rely on hope, ingenuity, and inner strength to persevere. ',
      publish_date: 'February 14, 2017',
    },
    {
      title: 'The Martian',
      author: 'Andy Weir',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41i9zBwEU0L._SX322_BO1,204,203,200_.jpg',
      description: "Six days ago, astronaut Mark Watney became one of the first people to walk on Mars.

      Now, he's sure he'll be the first person to die there.

      After a dust storm nearly kills him and forces his crew to evacuate while thinking him dead, Mark finds himself stranded and completely alone with no way to even signal Earth that he’s alive—and even if he could get word out, his supplies would be gone long before a rescue could arrive.

      Chances are, though, he won't have time to starve to death. The damaged machinery, unforgiving environment, or plain-old \"human error\" are much more likely to kill him first.

      But Mark isn't ready to give up yet. Drawing on his ingenuity, his engineering skills—and a relentless, dogged refusal to quit—he steadfastly confronts one seemingly insurmountable obstacle after the next. Will his resourcefulness be enough to overcome the impossible odds against him?",
      publish_date: '2001',
    },
    {
      title: 'Kings of Infinite Space',
      author: 'James Hynes',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51ICX3QgDxL._SX331_BO1,204,203,200_.jpg',
      description: "Paul Trilby is having a bad day. If he were to be honest with himself, Paul Trilby would have to admit that he's having a bad life. His wife left him. Three subsequent girlfriends left him. He's fallen from a top-notch university teaching job, to a textbook publisher, to, eventually, working as a temp writer for the Texas Department of General Services. And even here, in this land of carpeted partitions and cheap lighting fixtures, Paul cannot escape the curse his life has become. For it is not until he begins a tentative romance with the office's sassy mail girl that he begins to notice things are truly wrong. Strange sounds come from the air conditioning vents, the ceiling bulges, a body disappears. Mysterious men lurk about town, wearing thick glasses and pocket protectors...

      Kings of Infinite Space is a hilarious and horrifying spoof on our everyday lives and gives true voice to the old adage, \"Work is Hell.\"",
      publish_date: 'April 3, 2004',
    },
    {
      title: 'The Illustrated Man',
      author: 'Ray Bradbury',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51HgWYJWo2L._SX308_BO1,204,203,200_.jpg',
      description: 'Ray Bradbury brings wonders alive. For this peerless American storyteller, the most bewitching force in the universe is human nature. In these eighteen startling tales unfolding across a canvas of tattooed skin, living cities take their vengeance, technology awakens the most primal natural instincts, and dreams are carried aloft in junkyard rockets. Provocative and powerful, The Illustrated Man is a kaleidoscopic blending of magic, imagination, and truth—as exhilarating as interplanetary travel, as maddening as a walk in a million-year rain, and as comforting as simple, familiar rituals on the last night of the world.',
      publish_date: '1951',
    },
    {
      title: 'The Way of Kings',
      author: 'Brian Sanderson',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/516LVWmpRbL._SX303_BO1,204,203,200_.jpg',
      description: 'Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike. Animals hide in shells, trees pull in branches, and grass retracts into the soilless ground. Cities are built only where the topography offers shelter. It has been centuries since the fall of the ten consecrated orders known as the Knights Radiant, but their Shardblades and Shardplate remain: mystical swords and suits of armor that transform ordinary men into near-invincible warriors. Men trade kingdoms for Shardblades. Wars were fought for them, and won by them. One such war rages on a ruined landscape called the Shattered Plains. There, Kaladin, who traded his medical apprenticeship for a spear to protect his little brother, has been reduced to slavery. In a war that makes no sense, where ten armies fight separately against a single foe, he struggles to save his men and to fathom the leaders who consider them expendable.',
      publish_date: 'August 31, 2010',
    },
    {
      title: 'The Man Who Folded Himself',
      author: 'David Gerrold',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51Wz9z1XwKL._SX331_BO1,204,203,200_.jpg',
      description: "This classic work of science fiction is widely considered to be the ultimate time-travel novel. When Daniel Eakins inherits a time machine, he soon realizes that he has enormous power to shape the course of history. He can foil terrorists, prevent assassinations, or just make some fast money at the racetrack. And if he doesn't like the results of the change, he can simply go back in time and talk himself out of making it! But Dan soon finds that there are limits to his powers and forces beyond his control. ",
      publish_date: '1973',
    },
    {
      title: 'The Phantom Tollbooth',
      author: 'Norton Juster',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51KMrmZeUPL._SX340_BO1,204,203,200_.jpg',
      description: 'For Milo, everything’s a bore. When a tollbooth mysteriously appears in his room, he drives through only because he’s got nothing better to do. But on the other side, things seem different. Milo visits the Island of Conclusions (you get there by jumping), learns about time from a ticking watchdog named Tock, and even embarks on a quest to rescue Rhyme and Reason! Somewhere along the way, Milo realizes something astonishing. Life is far from dull. In fact, it’s exciting beyond his wildest dreams. . . .',
      publish_date: '1961',
    },
    {
      title: 'The Alchemist',
      author: 'Paulo Coelho',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/516c6gUQLaL._SX329_BO1,204,203,200_.jpg',
      description: "Combining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers across generations.

      Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams.",
      publish_date: '1988',
    },
    {
      title: 'House of Leaves',
      author: 'Mark Z. Danielewski',
      img_url: "https://images-na.ssl-images-amazon.com/images/I/418rxNCl2rL._SX372_BO1,204,203,200_.jpg",
      description: "Years ago, when House of Leaves was first being passed around, it was nothing more than a badly bundled heap of paper, parts of which would occasionally surface on the Internet. No one could have anticipated the small but devoted following this terrifying story would soon command. Starting with an odd assortment of marginalized youth -- musicians, tattoo artists, programmers, strippers, environmentalists, and adrenaline junkies -- the book eventually made its way into the hands of older generations, who not only found themselves in those strangely arranged pages but also discovered a way back into the lives of their estranged children.

      Now, for the first time, this astonishing novel is made available in book form, complete with the original colored words, vertical footnotes, and newly added second and third appendices.

      The story remains unchanged, focusing on a young family that moves into a small home on Ash Tree Lane where they discover something is terribly wrong: their house is bigger on the inside than it is on the outside.

      Of course, neither Pulitzer Prize-winning photojournalist Will Navidson nor his companion Karen Green was prepared to face the consequences of that impossibility, until the day their two little children wandered off and their voices eerily began to return another story -- of creature darkness, of an ever-growing abyss behind a closet door, and of that unholy growl which soon enough would tear through their walls and consume all their dreams.",
      publish_date: 'March 7, 2000',
    },
    {
      title: 'The curious incident of the dog in the night-time',
      author: 'Mark Haddon',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41bz6juMwiL._SX323_BO1,204,203,200_.jpg',
      description: "Christopher John Francis Boone knows all the countries of the world and their capitals and every prime number up to 7,057. He relates well to animals but has no understanding of human emotions. He cannot stand to be touched. And he detests the color yellow.

      This improbable story of Christopher's quest to investigate the suspicious death of a neighborhood dog makes for one of the most captivating, unusual, and widely heralded novels in recent years.",
      publish_date: '2003',
    },
    {
      title: 'Good Poems',
      author: 'Garrison Keillor',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51%2BxLmcJ4pL._SX320_BO1,204,203,200_.jpg',
      description: "Every day people tune in to The Writer's Almanac on public radio and hear Garrison Keillor read them a poem. And here, for the first time, is an anthology of poems from the show, chosen by Keillor for their wit, their frankness, their passion, their \"utter clarity in the face of everything else a person has to deal with at 7 a.m.\"

      Good Poems includes verse about lovers, children, failure, everyday life, death, and transcendance. It features the work of classic poets, such as Emily Dickinson, Walt Whitman, and Robert Frost, as well as the work of contemporary greats such as Howard Nemerov, Charles Bukowski, Donald Hall, Billy Collins, Robert Bly, and Sharon Olds. It's a book of poems for anybody who loves poetry whether they know it or not.",
      publish_date: 'September 30, 2002',
    },
    {
      title: 'The Poisonwood Bible',
      author: 'Barbara Kingsolver',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51IvQ1MrWjL._SX330_BO1,204,203,200_.jpg',
      description: "The Poisonwood Bible is a story told by the wife and four daughters of Nathan Price, a fierce, evangelical Baptist who takes his family and mission to the Belgian Congo in 1959. They carry with them everything they believe they will need from home, but soon find that all of it—from garden seeds to Scripture—is calamitously transformed on African soil. What follows is a suspenseful epic of one family's tragic undoing and remarkable reconstruction over the course of three decades in postcolonial Africa.",
      publish_date: '1998',
    },
    {
      title: 'The Narrow Road to the Deep North',
      author: 'Richard Flanagan',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41TXrLUXuoL._SX311_BO1,204,203,200_.jpg',
      description: 'In The Narrow Road to the Deep North, Richard Flanagan displays the gifts that have made him one of the most acclaimed writers of contemporary fiction. Moving deftly from a Japanese POW camp to present-day Australia, from the experiences of Dorrigo Evans and his fellow prisoners to that of the Japanese guards, this savagely beautiful novel tells a story of the many forms of love and death, of war and truth, as one man comes of age, prospers, only to discover all that he has lost.',
      publish_date: 'September 23, 2013',
    },
    {
      title: 'Go Set a Watchman',
      author: 'Harper Lee',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51sbtF6KaPL._SX329_BO1,204,203,200_.jpg',
      description: 'An historic literary event: the publication of a newly discovered novel, the earliest known work from Harper Lee, the beloved, bestselling author of the Pulitzer Prize-winning classic, To Kill a Mockingbird.Originally written in the mid-1950s, Go Set a Watchman was the novel Harper Lee first submitted to her publishers before To Kill a Mockingbird. Assumed to have been lost, the manuscript was discovered in late 2014.Go Set a Watchman features many of the characters from To Kill a Mockingbird some twenty years later. Returning home to Maycomb to visit her father, Jean Louise Finch?Scout?struggles with issues both personal and political, involving Atticus, society, and the small Alabama town that shaped her.',
      publish_date: 'July 14, 2015',
    },
    {
      title: 'The Night Circus',
      author: 'Erin Morgenstern',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51RTGwqu9SL._SX327_BO1,204,203,200_.jpg',
      description: "The circus arrives without warning. No announcements precede it. It is simply there, when yesterday it was not. Within the black-and-white striped canvas tents is an utterly unique experience full of breathtaking amazements. It is called Le Cirque des Rêves, and it is only open at night.

      But behind the scenes, a fierce competition is underway—a duel between two young magicians, Celia and Marco, who have been trained since childhood expressly for this purpose by their mercurial instructors. Unbeknownst to them, this is a game in which only one can be left standing, and the circus is but the stage for a remarkable battle of imagination and will. Despite themselves, however, Celia and Marco tumble headfirst into love—a deep, magical love that makes the lights flicker and the room grow warm whenever they so much as brush hands.

      True love or not, the game must play out, and the fates of everyone involved, from the cast of extraordinary circus per­formers to the patrons, hang in the balance, suspended as precariously as the daring acrobats overhead.

      Written in rich, seductive prose, this spell-casting novel is a feast for the senses and the heart.",
      publish_date: 'September 13, 2011',
    },
    {
      title: 'North and South ',
      author: 'Elizabeth Gaskell',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/514g3hj8gqL._SX322_BO1,204,203,200_.jpg',
      description: "Set in the fictional industrial town of Milton in the North of England, “North and South” is Elizabeth Gaskell’s 1855 novel that contrasts the different ways of life in the two respective regions of England. In the North the emerging industrialized society is sharply contrasted with the aging gentry of the agrarian based South. The plot of “North and South” centers around the main character Margaret Hale, the daughter of a non-conformist minister who moves his family to an industrial town in the North after a split from the Church of England. Here the impact of the industrial revolution can be fully seen as tensions between workers and employers over poor working conditions and the growing divide between the rich industrialists and poor factory workers escalate into violent conflict. Originally serialized between September 1854 and January 1855 in Charles Dickens’s “Household Words”, “North and South” was one of the first and most important social novels to address the changes brought about by the industrial revolution in England. This edition is printed on premium acid-free paper and includes an introduction by Adolphus William Ward.",
      publish_date: '1855',
    },
    {
      title: "Howl's Moving Castle",
      author: 'Diana Wynne Jones',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51gKAVDyENL._SX334_BO1,204,203,200_.jpg',
      description: "Sophie has the great misfortune of being the eldest of three daughters, destined to fail miserably should she ever leave home to seek her fate. But when she unwittingly attracts the ire of the Witch of the Waste, Sophie finds herself under a horrid spell that transforms her into an old lady. Her only chance at breaking it lies in the ever-moving castle in the hills: the Wizard Howl's castle. To untangle the enchantment, Sophie must handle the heartless Howl, strike a bargain with a fire demon, and meet the Witch of the Waste head-on. Along the way, she discovers that there's far more to Howl—and herself—than first meets the eye.",
      publish_date: '1986',
    },
    {
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51uWyPyyBnL._SX331_BO1,204,203,200_.jpg',
      description: "1813. The story follows the main character, Elizabeth Bennet, as she deals with issues of manners, upbringing, morality, education, and marriage in the society of the landed gentry of the British Regency. Elizabeth is the second of five daughters of a country gentleman living near the fictional town of Meryton in Hertfordshire, near London. Page 2 of a letter from Jane Austen to her sister Cassandra (11 June 1799) in which she first mentions Pride and Prejudice, using its working title First Impressions. Set in England in the early 19th century, Pride and Prejudice tells the story of Mr and Mrs Bennet's five unmarried daughters after the rich and eligible Mr Bingley and his status-conscious friend, Mr Darcy, have moved into their neighbourhood. While Bingley takes an immediate liking to the eldest Bennet daughter, Jane, Darcy has difficulty adapting to local society and repeatedly clashes with the second-eldest Bennet daughter, Elizabeth. Though Austen set the story at the turn of the 19th century, it retains a fascination for modern readers, continuing near the top of lists of \"most loved books.\" It has become one of the most popular novels in English literature, selling over 20 million copies, and receives considerable attention from literary scholars. Modern interest in the book has resulted in a number of dramatic adaptations and an abundance of novels and stories imitating Austen's memorable characters or themes.",
      publish_date: 'January 28, 1813',
    },
    {
      title: "Sense and Sensibility",
      author: 'Jane Austen',
      img_url: "https://images-na.ssl-images-amazon.com/images/I/414hu6Q4xFL._SX324_BO1,204,203,200_.jpg",
      description: "Marianne Dashwood wears her heart on her sleeve, and when she falls in love with the dashing but unsuitable John Willoughby she ignores her sister Elinor's warning that her impulsive behaviour leaves her open to gossip and innuendo. Meanwhile Elinor, always sensitive to social convention, is struggling to conceal her own romantic disappointment, even from those closest to her. Through their parallel experience of love - and its threatened loss - the sisters learn that sense must mix with sensibility if they are to find personal happiness in a society where status and money govern the rules of love. This edition also includes explanatory notes and textual variants between first and second edition.

      For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.",
      publish_date: '1811',
    }
  ]
)
