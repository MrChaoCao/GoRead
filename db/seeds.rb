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
    },
    {
      title: "Harry Potter and the Sorcerer's Stone",
      author: "J.K. Rowling",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51HSkTKlauL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "Harry Potter has no idea how famous he is. That's because he's being raised by his miserable aunt and uncle who are terrified Harry will learn that he's really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny.",
      publish_date: 'June 26, 1997',
    },
    {
      title: "Harry Potter and the Chamber of Secrets",
      author: "J.K. Rowling",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51jNORv6nQL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "The Dursleys were so mean that hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he's packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.

      And strike it does. For in Harry's second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls' bathroom, and the unwanted attentions of Ron Weasley's younger sister, Ginny.

      But each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself?",
      publish_date: "July 2, 1998",
    },
    {
      title: "Harry Potter and the Prisoner of Azkaban",
      author: "J.K. Rowling",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51gY5jzz3NL._SX340_BO1,204,203,200_.jpg',
      description: "For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort.

      Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter's defeat of You-Know-Who was Black's downfall as well. And the Azkban guards heard Black muttering in his sleep, \"He's at Hogwarts...he's at Hogwarts.\"

      Harry Potter isn't safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst.",
      publish_date: "July 8, 1999",
    },
    {
      title: "Harry Potter and the Goblet of Fire",
      author: "J.K. Rowling",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51jawTJWjnL._SX328_BO1,204,203,200_.jpg',
      description: "Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup. He wants to find out about the mysterious event that's supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn't happened for a hundred years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he's not normal - even by wizarding standards. And in his case, different can be deadly.",
      publish_date: "July 8, 2000",
    },
    {
      title: "Harry Potter and the Order of the Phoenix",
      author: "J.K. Rowling",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51T33oK0w0L._SX341_BO1,204,203,200_.jpg',
      description: "In his fifth year at Hogwart's, Harry faces challenges at every turn, from the dark threat of He-Who-Must-Not-Be-Named and the unreliability of the government of the magical world to the rise of Ron Weasley as the keeper of the Gryffindor Quidditch Team. Along the way he learns about the strength of his friends, the fierceness of his enemies, and the meaning of sacrifice.",
      publish_date: "June 21, 2003",
    },
    {
      title: "Harry Potter and the Half-Blood Prince",
      author: "J.K. Rowling",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/51NbOxBO%2BBL._SX346_BO1,204,203,200_.jpg",
      description: "The war against Voldemort is not going well; even the Muggles have been affected. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.

      And yet . . . as with all wars, life goes on. Sixth-year students learn to Apparate. Teenagers flirt and fight and fall in love. Harry receives some extraordinary help in Potions from the mysterious Half-Blood Prince. And with Dumbledore's guidance, he seeks out the full, complex story of the boy who became Lord Voldemort -- and thus finds what may be his only vulnerability.",
      publish_date: "July 16, 2005",
    },
    {
      title: "Harry Potter and the Deathly Hallows",
      author: "J.K. Rowling",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/51HQfN8sfVL._SX340_BO1,204,203,200_.jpg",
      description: "Readers beware. The brilliant, breathtaking conclusion to J.K. Rowling's spellbinding series is not for the faint of heart--such revelations, battles, and betrayals await in Harry Potter and the Deathly Hallows that no fan will make it to the end unscathed. Luckily, Rowling has prepped loyal readers for the end of her series by doling out increasingly dark and dangerous tales of magic and mystery, shot through with lessons about honor and contempt, love and loss, and right and wrong. Fear not, you will find no spoilers in our review--to tell the plot would ruin the journey, and Harry Potter and the Deathly Hallows is an odyssey the likes of which Rowling's fans have not yet seen, and are not likely to forget. But we would be remiss if we did not offer one small suggestion before you embark on your final adventure with Harry--bring plenty of tissues.
      The heart of Book 7 is a hero's mission--not just in Harry's quest for the Horcruxes, but in his journey from boy to man--and Harry faces more danger than that found in all six books combined, from the direct threat of the Death Eaters and you-know-who, to the subtle perils of losing faith in himself. Attentive readers would do well to remember Dumbledore's warning about making the choice between \"what is right and what is easy,\" and know that Rowling applies the same difficult principle to the conclusion of her series. While fans will find the answers to hotly speculated questions about Dumbledore, Snape, and you-know-who, it is a testament to Rowling's skill as a storyteller that even the most astute and careful reader will be taken by surprise.

      A spectacular finish to a phenomenal series, Harry Potter and the Deathly Hallows is a bittersweet read for fans. The journey is hard, filled with events both tragic and triumphant, the battlefield littered with the bodies of the dearest and despised, but the final chapter is as brilliant and blinding as a phoenix's flame, and fans and skeptics alike will emerge from the confines of the story with full but heavy hearts, giddy and grateful for the experience.",
      publish_date: "July 21, 2007",
    },
    {
      title: 'Americanah',
      author: "Chimamanda Ngozi Adichie",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51%2B2gACnS9L._SX333_BO1,204,203,200_.jpg',
      description: "Ifemelu and Obinze are young and in love when they depart military-ruled Nigeria for the West. Beautiful, self-assured Ifemelu heads for America, where despite her academic success, she is forced to grapple with what it means to be black for the first time. Quiet, thoughtful Obinze had hoped to join her, but with post-9/11 America closed to him, he instead plunges into a dangerous, undocumented life in London. Fifteen years later, they reunite in a newly democratic Nigeria, and reignite their passion--for each other and for their homeland",
      publish_date: 'May 14, 2013',
    },
    {
      title: 'Colorless Tsukuru Tazaki and His Years of Pilgrimage',
      author: "Haruki Murakami",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41Tt7GjByRL._SX349_BO1,204,203,200_.jpg',
      description: 'Colorless Tsukuru Tazaki and His Years of Pilgrimage is the remarkable story of a young man haunted by a great loss; of dreams and nightmares that have unintended consequences for the world around us; and of a journey into the past that is necessary to mend the present. Here Haruki Murakami—one of the most revered voices in literature today—gives us a story of love, friend­ship, and heartbreak for the ages.',
      publish_date: 'April 12, 2013',
    },
    {
      title: 'Things Fall Apart',
      author: 'Chinua Achebe',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51FHR9fwdaL._SX331_BO1,204,203,200_.jpg',
      description: 'Things Fall Apart is a 1958 English-language novel by Nigerian author Chinua Achebe. It is a staple book in schools throughout Africa and widely read and studied in English-speaking countries around the world. It is seen as the archetypal modern African novel in English, and one of the first African novels written in English to receive global critical acclaim. The novel depicts the life of Okonkwo, a leader and local wrestling champion in Umuofia—one of a fictional group of nine villages in Nigeria, inhabited by the Igbo people .Okonkwo is a wealthy and respected member of the Umuofia clan of the Ibo people of Nigeria in the late 1800s. Okonkwo seems to have everything: he has broken away from the weakness and disgrace of his father and is now a successful farmer with three wives and a position of leadership in his community. However, Okonkwo has difficulty controlling his temper, and one outburst of violence leads to his family’s banishment from their village for seven years. But that’s only the beginning of things falling apart for Okonkwo. While he’s away from his village, Christian missionaries from Europe arrive, bringing their own ideas about religion and life to the Ibo people. When Okonkwo finally returns, will his village be a place he can recognize, or will the missionaries have imposed on it a new culture beyond his understanding? Special Considerations: Possible sensitive issues in Things Fall Apart include violence, adult themes, and racism.',
      publish_date: '1958',
    },
    {
      title: 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing',
      author: 'Marie Kondō',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/512oubYY-pL._SX354_BO1,204,203,200_.jpg',
      description: "The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing Japanese organizational consultant Marie Kondo takes tidying to a whole new level, promising that if you properly declutter your home once, you'll never have to do it again. Whereas most methods advocate a room-by-room or little-by-little approach, the KonMari Method's category-by-category, all-at-once prescription leads to lasting results. In fact, none of Kondo's clients have been repeat customers (and she still has a three-month waiting list of new customers!). With detailed guidance for every type of item in the household, this quirky little manual from Japan's newest lifestyle phenomenon will help readers clear their clutter and enjoy the unique magic of a tidy home--and the calm, motivated mindset it can inspire.",
      publish_date: 'January 15, 2011',
    },
    {
      title: 'Anna Karenina',
      author: 'Lev Nikolayevich Tolstoy',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/514tG8HMsrL._SX317_BO1,204,203,200_.jpg',
      description: "Anna Karenina is one of the most loved and memorable heroines of literature. Her overwhelming charm dominates a novel of unparalleled richness and density. Tolstoy considered this book to be his first real attempt at a novel form, and it addresses the very nature of society at all levels,- of destiny, death, human relationships and the irreconcilable contradictions of existence. It ends tragically, and there is much that evokes despair, yet set beside this is an abounding joy in life's many ephemeral pleasures, and a profusion of comic relief.",
      publish_date: '1877',
    },
    {
      title: 'The Brothers Karamazov',
      author: 'Fyodor Dostoyevsky',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51q70YgDo7L._SX324_BO1,204,203,200_.jpg',
      description: "Fyodor Dostoyevsky's powerful meditation on faith, meaning and morality, The Brothers Karamazov is translated with an introduction and notes by David McDuff in Penguin Classics. When brutal landowner Fyodor Karamazov is murdered, the lives of his sons are changed irrevocably: Mitya, the sensualist, whose bitter rivalry with his father immediately places him under suspicion for parricide; Ivan, the intellectual, whose mental tortures drive him to breakdown; the spiritual Alyosha, who tries to heal the family's rifts; and the shadowy figure of their bastard half-brother Smerdyakov. As the ensuing investigation and trial reveal the true identity of the murderer, Dostoyevsky's dark masterpiece evokes a world where the lines between innocence and corruption, good and evil, blur and everyone's faith in humanity is tested. This powerful translation of The Brothers Karamazov features and introduction highlighting Dostoyevsky's recurrent themes of guilt and salvation, with a new chronology and further reading.",
      publish_date: '1880',
    },
    {
      title: "Swamplandia!",
      author: 'Karen Russell',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/512BivR267L._SX335_BO1,204,203,200_.jpg',
      description: 'Thirteen-year-old Ava Bigtree has lived her entire life at Swamplandia!, her family’s island home and gator-wrestling theme park in the Florida Everglades. But when illness fells Ava’s mother, the park’s indomitable headliner, the family is plunged into chaos; her father withdraws, her sister falls in love with a spooky character known as the Dredgeman, and her brilliant big brother, Kiwi, defects to a rival park called The World of Darkness.

      As Ava sets out on a mission through the magical swamps to save them all, we are drawn into a lush and bravely imagined debut that takes us to the shimmering edge of reality.',
      publish_date: 'February 1, 2011',
    },
    {
      title: "The Storied Life of A. J. Fikry",
      author: "Gabrielle Zevin",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/51oqJRpuk-L._SY291_BO1,204,203,200_QL40_.jpg",
      description: "The Storied Life of A. J. Fikry is a heartwarming book about a lonely man who finds true love, happiness, and friendship. The story is about AJ, a disgruntled bookshop owner who doesn't care for anyone, including his customers. AJ gradually brings the love of books into the lives of the people on the island where he lives. He develops into a nicer and more dependable person over the years because of the love of a child. The author sets out to show the joy that books can bring into one's life and the importance of a thriving bookshop and literary culture in a community. ",
      publish_date: '2013',
    },
    {
      title: 'A Man Called Ove',
      author: 'Fredrik Backman ',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51dQBC7HcaL._SX320_BO1,204,203,200_.jpg',
      description: "Meet Ove. He’s a curmudgeon—the kind of man who points at people he dislikes as if they were burglars caught outside his bedroom window. He has staunch principles, strict routines, and a short fuse. People call him “the bitter neighbor from hell.” But must Ove be bitter just because he doesn’t walk around with a smile plastered to his face all the time?

      Behind the cranky exterior there is a story and a sadness. So when one November morning a chatty young couple with two chatty young daughters move in next door and accidentally flatten Ove’s mailbox, it is the lead-in to a comical and heartwarming tale of unkempt cats, unexpected friendship, and the ancient art of backing up a U-Haul. All of which will change one cranky old man and a local residents’ association to their very foundations.",
      publish_date: 'August 27, 2012',
    },
    {
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51gSriWepkL._SY344_BO1,204,203,200_QL70_.jpg',
      description: 'One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime.',
      publish_date: 'July 11, 1960',
    },
    {
      title: "The Diary of Anne Frank",
      author: "Anne Frank",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/51zgovybyAL._SX303_BO1,204,203,200_.jpg",
      description: "In 1942, with the Nazis occupying Holland, a thirteen-year-old Jewish girl and her family fled their home in Amsterdam and went into hiding. For the next two years, until their whereabouts were betrayed to the Gestapo, the Franks and another family lived cloistered in the “Secret Annexe” of an old office building. Cut off from the outside world, they faced hunger, boredom, the constant cruelties of living in confined quarters, and the ever-present threat of discovery and death. In her diary Anne Frank recorded vivid impressions of her experiences during this period. By turns thoughtful, moving, and surprisingly humorous, her account offers a fascinating commentary on human courage and frailty and a compelling self-portrait of a sensitive and spirited young woman whose promise was tragically cut short.",
      publish_date: 'June 25, 1947',
    },
    {
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51khWutZqCL._SX325_BO1,204,203,200_.jpg',
      description: "The Great Gatsby, F. Scott Fitzgerald's third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted \"gin was the national drink and sex the national obsession,\" it is an exquisitely crafted tale of America in the 1920s.

      The Great Gatsby is one of the great classics of twentieth-century literature.",
      publish_date: 'April 10, 1925',
    },
    {
      title: '1984',
      author: 'George Orwell',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51zy4SVNkxL._SX326_BO1,204,203,200_.jpg',
      description: "“The Party told you to reject the evidence of your eyes and ears. It was their final, most essential command.”

      Winston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching...

      A startling and haunting vision of the world, 1984 is so powerful that it is completely convincing from start to finish. No one can deny the influence of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency of its admonitions—a legacy that seems only to grow with the passage of time.",
      publish_date: 'June 8, 1949',
    },
    {
      title: "Charlotte's Web",
      author: 'E. B White',
      img_url: "https://images-na.ssl-images-amazon.com/images/I/61%2B3z1o4oUL._SX334_BO1,204,203,200_.jpg",
      description: "Some Pig. Humble. Radiant. These are the words in Charlotte's Web, high up in Zuckerman's barn. Charlotte's spiderweb tells of her feelings for a little pig named Wilbur, who simply wants a friend. They also express the love of a girl named Fern, who saved Wilbur's life when he was born the runt of his litter.

      E. B. White's Newbery Honor Book is a tender novel of friendship, love, life, and death that will continue to be enjoyed by generations to come. It contains illustrations by Garth Williams, the acclaimed illustrator of E. B. White's Stuart Little and Laura Ingalls Wilder's Little House series, among many other books.",
      publish_date: "October 15, 1952",
    },
    {
      title: 'Don Quixote',
      author: 'Miguel de Cervantes',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51YmEwWvUqL._SX331_BO1,204,203,200_.jpg',
      description: "Idle reader: thou mayest believe me without any oath that I would this book, as it is the child of my brain, were the fairest, gayest, and cleverest that could be imagined. But I could not counteract Nature's law that everything shall beget its like; and what, then, could this sterile, illtilled wit of mine beget but the story of a dry, shrivelled, whimsical offspring, full of thoughts of all sorts and such as never came into any other imagination—just what might be begotten in a prison, where every misery is lodged and every doleful sound makes its dwelling? Tranquillity, a cheerful retreat, pleasant fields, bright skies, murmuring brooks, peace of mind, these are the things that go far to make even the most barren muses fertile, and bring into the world births that fill it with wonder and delight. Sometimes when a father has an ugly, loutish son, the love he bears him so blindfolds his eyes that he does not see his defects, or, rather, takes them for gifts and charms of mind and body, and talks of them to his friends as wit and grace. I, however—for though I pass for the father, I am but the stepfather to \"Don Quixote\"—have no desire to go with the current of custom, or to implore thee, dearest reader, almost with tears in my eyes, as others do, to pardon or excuse the defects thou wilt perceive in this child of mine. Thou art neither its kinsman nor its friend, thy soul is thine own and thy will as free as any man's, whate'er he be, thou art in thine own house and master of it as much as the king of his taxes and thou knowest the common saying, \"Under my cloak I kill the king;\" all which exempts and frees thee from every consideration and obligation, and thou canst say what thou wilt of the story without fear of being abused for any ill or rewarded for any good thou mayest say of it.",
      publish_date: '1615',
    },
    {
      title: "Swann's Way: In Search of Lost Time",
      author: 'Marcel Proust',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51me-a8zgcL._SX331_BO1,204,203,200_.jpg',
      description: "In Search of Lost Time follows the narrator's recollections of childhood and experiences into adulthood during late 19th century to early 20th century aristocratic France, while reflecting on the loss of time and lack of meaning to the world.[1] The novel began to take shape in 1909. Proust continued to work on it until his final illness in the autumn of 1922 forced him to break off. Proust established the structure early on, but even after volumes were initially finished he kept adding new material and edited one volume after another for publication. The last three of the seven volumes contain oversights and fragmentary or unpolished passages, as they existed only in draft form at the death of the author; the publication of these parts was overseen by his brother Robert.

      The work was published in France between 1913 and 1927. Proust paid for the publication of the first volume (by the Grasset publishing house) after it had been turned down by leading editors who had been offered the manuscript in longhand.",
      publish_date: '1913',
    },
    {
      title: "Ulysses",
      author: 'James Joyce',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/416pRbo0gIL._SX348_BO1,204,203,200_.jpg',
      description: "Ulysses is a modernist novel by Irish writer James Joyce. It was first serialised in parts in the American journal The Little Review from March 1918 to December 1920, and then published in its entirety by Sylvia Beach in February 1922, in Paris. It is considered to be one of the most important works of modernist literature, and has been called \"a demonstration and summation of the entire movement\". According to Declan Kiberd, \"Before Joyce, no writer of fiction had so foregrounded the process of thinking.\" However, even proponents of Ulysses such as Anthony Burgess have described the book as \"inimitable, and also possibly mad\". Ulysses chronicles the peripatetic appointments and encounters of Leopold Bloom in Dublin in the course of an ordinary day, 16 June 1904. Ulysses is the Latinised name of Odysseus, the hero of Homer's epic poem Odyssey, and the novel establishes a series of parallels between its characters and events and those of the poem.",
      publish_date: 'February 2, 1922',
    },
    {
      title: 'The Odyssey',
      author: 'Homer',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/511ztJeNubL._SX324_BO1,204,203,200_.jpg',
      description: "The Odyssey (/ˈɒdəsi/;[1] Greek: Ὀδύσσεια Odýsseia, pronounced [o.dýs.sej.ja] in Classical Attic) is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work ascribed to Homer. The Odyssey is fundamental to the modern Western canon; it is the second-oldest extant work of Western literature, while the Iliad is the oldest. Scholars believe the Odyssey was composed near the end of the 8th century BC, somewhere in Ionia, the Greek coastal region of Anatolia.[2]

      The poem mainly focuses on the Greek hero Odysseus (known as Ulysses in Roman myths), king of Ithaca, and his journey home after the fall of Troy. It takes Odysseus ten years to reach Ithaca after the ten-year Trojan War.[3] In his absence, it is assumed Odysseus has died, and his wife Penelope and son Telemachus must deal with a group of unruly suitors, the Mnesteres (Greek: Μνηστῆρες) or Proci, who compete for Penelope's hand in marriage.",
      publish_date: '8th Century BCE',
    },
    {
      title: 'War and Peace',
      author: 'Lev Nikolayevich Tolstoy',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/510UE7bvHoL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "War and Peace broadly focuses on Napoleon’s invasion of Russia in 1812 and follows three of the most well-known characters in literature: Pierre Bezukhov, the illegitimate son of a count who is fighting for his inheritance and yearning for spiritual fulfillment; Prince Andrei Bolkonsky, who leaves his family behind to fight in the war against Napoleon; and Natasha Rostov, the beautiful young daughter of a nobleman who intrigues both men.

      As Napoleon’s army invades, Tolstoy brilliantly follows characters from diverse backgrounds—peasants and nobility, civilians and soldiers—as they struggle with the problems unique to their era, their history, and their culture. And as the novel progresses, these characters transcend their specificity, becoming some of the most moving—and human—figures in world literature.",
      publish_date: '1867',
    },
    {
      title: 'Moby Dick',
      author: 'Herman Melville',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51%2BOBiexfHL._SX312_BO1,204,203,200_.jpg',
      description: "Moby-Dick; or, The Whale is a novel by Herman Melville, in which Ishmael narrates the monomaniacal quest of Ahab, captain of the whaler Pequod, for revenge on the albino sperm whale Moby Dick, which on a previous voyage destroyed Ahab's ship and severed his leg at the knee. Although the novel was a commercial failure and out of print at the time of the author's death in 1891, its reputation grew immensely during the twentieth century. D. H. Lawrence called it \"one of the strangest and most wonderful books in the world,\" and \"the greatest book of the sea ever written.\" Moby-Dick is considered a Great American Novel and an outstanding work of the Romantic period in America and the American Renaissance. \"Call me Ishmael\" is one of world literature's most famous opening sentences. The product of a year and a half of writing, the book is dedicated to Nathaniel Hawthorne, \"in token of my admiration for his genius,\" and draws on Melville's experience at sea, on his reading in whaling literature, and on literary inspirations such as Shakespeare and the Bible. The detailed and realistic descriptions of whale hunting and of extracting whale oil, as well as life aboard ship among a culturally diverse crew, are mixed with exploration of class and social status, good and evil, and the existence of God. ",
      publish_date: 'October 18, 1851',
    },
    {
      title: 'The Divine Comedy',
      author: 'Dante Aligieri',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51EMFsLkTuL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "Comprised of three books - Inferno, Purgatorio, Paradiso - Dante's Divine Comedy follows Dante Alighieri's epic poems follows Dante through the different sections of the afterlife; hell, purgatory, and heaven.

      Divine Comedy began as a project in 1308 and ended in 1320, the year before Dante's death. Told in first person, Dante follows the poet Virgil through the rings of hell and purgatory. The Divine Comedy is a highly allegorical text and renowned as one of the most influential Italian masterpieces in literature.",
      publish_date: '1320',
    },
    {
      title: 'Hamlet',
      author: "William Shakespeare",
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51lfguOo-UL._SX385_BO1,204,203,200_.jpg',
      description: "Hamlet is Shakespeare's most popular, and most puzzling, play. It follows the form of a \"revenge tragedy,\" in which the hero, Hamlet, seeks vengeance against his father's murderer, his uncle Claudius, now the king of Denmark. Much of its fascination, however, lies in its uncertainties.

      Among them: What is the Ghost--Hamlet's father demanding justice, a tempting demon, an angelic messenger? Does Hamlet go mad, or merely pretend to? Once he is sure that Claudius is a murderer, why does he not act? Was his mother, Gertrude, unfaithful to her husband or complicit in his murder?",
      publish_date: '1603',
    },
    {
      title: 'The Adventures of Huckleberry Finn',
      author: 'Mark Twain',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51N9m0VC0IL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "Adventures of Huckleberry Finn is a novel by Mark Twain, first published in the United Kingdom in December 1884 and in the United States in February 1885. Commonly named among the Great American Novels, the work is among the first in major American literature to be written throughout in vernacular English, characterized by local color regionalism. It is told in the first person by Huckleberry \"Huck\" Finn, a friend of Tom Sawyer and narrator of two other Twain novels (Tom Sawyer Abroad and Tom Sawyer, Detective). It is a direct sequel to The Adventures of Tom Sawyer. The book is noted for its colorful description of people and places along the Mississippi River. Set in a Southern antebellum society that had ceased to exist about twenty years before the work was published, Adventures of Huckleberry Finn is an often scathing satire on entrenched attitudes, particularly racism.",
      publish_date: 'December 10, 1884',
    },
    {
      title: "Madame Bovary",
      author: "Gustave Flaubert ",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/516HZDElAyL._SX316_BO1,204,203,200_.jpg",
      description: "Unhappily married to a devoted, clumsy provincial doctor, Emma revolts against the ordinariness of her life by pursuing voluptuous dreams of ecstasy and love. But her sensuous and sentimental desires lead her only to suffering corruption and downfall. A brilliant psychological portrait, Madame Bovary searingly depicts the human mind in search of transcendence. Who is Madame Bovary? Flaubert's answer to this question was superb: \"Madame Bovary, c'est moi.\" Acclaimed as a masterpiece upon its publication in 1857, the work catapulted Flaubert to the ranks of the world's greatest novelists. This volume, with its fine translation by Lowell Bair, a perceptive introduction by Leo Bersani, and a complete supplement of essays and critical comments, is the indispensable Madame Bovary.",
      publish_date: 'December 15, 1856',
    },
    {
      title: "Wuthering Heights",
      author: "Emily Brontë",
      img_url: "https://images-na.ssl-images-amazon.com/images/I/41OzRFukzLL._SY291_BO1,204,203,200_QL40_.jpg",
      description: "Emily Brontë's only novel endures as a work of tremendous and far-reaching influence. The Penguin Classics edition is the definitive version of the text, edited with an introduction by Pauline Nestor.

      Lockwood, the new tenant of Thrushcross Grange, situated on the bleak Yorkshire moors, is forced to seek shelter one night at Wuthering Heights, the home of his landlord. There he discovers the history of the tempestuous events that took place years before. What unfolds is the tale of the intense love between the gypsy foundling Heathcliff and Catherine Earnshaw. Catherine, forced to choose between passionate, tortured Heathcliff and gentle, well-bred Edgar Linton, surrendered to the expectations of her class. As Heathcliff's bitterness and vengeance at his betrayal is visited upon the next generation, their innocent heirs must struggle to escape the legacy of the past.

      In this edition, a new preface by Lucasta Miller, author of The Brontë Myth, looks at the ways in which the novel has been interpreted, from Charlotte Brontë onwards. This complements Pauline Nestor's introduction, which discusses changing critical receptions of the novel, as well as Emily Brontë's influences and background.",
      publish_date: '1847',
    },
    {
      title: 'The Sound and the Fury',
      author: 'William Faulkner',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/513mmYm5QFL._SX322_BO1,204,203,200_.jpg',
      description: "The Sound and the Fury is the tragedy of the Compson family, featuring some of the most memorable characters in literature: beautiful, rebellious Caddy; the manchild Benjy; haunted, neurotic Quentin; Jason, the brutal cynic; and Dilsey, their black servant. Their lives fragmented and harrowed by history and legacy, the character’s voices and actions mesh to create what is arguably Faulkner’s masterpiece and  one of the greatest novels of the twentieth century.


      “I give you the mausoleum of all hope and desire. . . . I give it to you not that you may remember time, but that you might forget it now and then for a moment and not spend all of your breath trying to conquer it. Because no battle is ever won he said. They are not even fought. The field only reveals to man his own folly and despair, and victory is an illusion of philosophers and fools.”",
      publish_date: '1929',
    },
    {
      title: 'Lolita',
      author: 'Vladimir Nabokov',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/41s2G6WxLvL._SX322_BO1,204,203,200_.jpg',
      description: "Awe and exhiliration--along with heartbreak and mordant wit--abound in Lolita, Nabokov's most famous and controversial novel, which tells the story of the aging Humbert Humbert's obsessive, devouring, and doomed passion for the nymphet Dolores Haze. Lolita is also the story of a hypercivilized European colliding with the cheerful barbarism of postwar America. Most of all, it is a meditation on love--love as outrage and hallucination, madness and transformation.",
      publish_date: '1955',
    },
    {
      title: "Alice's Adventures in Wonderland",
      author: 'Lewis Carroll',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/61w8x8Hrb-L._SX390_BO1,204,203,200_.jpg',
      description: "n 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole. Thus began the immortal adventures of Alice, perhaps the most popular heroine in English literature. Countless scholars have tried to define the charm of the Alice books–with those wonderfully eccentric characters the Queen of Hearts, Tweedledum, and Tweedledee, the Cheshire Cat, Mock Turtle, the Mad Hatter et al.–by proclaiming that they really comprise a satire on language, a political allegory, a parody of Victorian children’s literature, even a reflection of contemporary ecclesiastical history. Perhaps, as Dodgson might have said, Alice is no more than a dream, a fairy tale about the trials and tribulations of growing up–or down, or all turned round–as seen through the expert eyes of a child.",
      publish_date: 'November 26, 1865',
    },
    {
      title: 'To the Lighthouse',
      author: 'Virginia Woolf',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/512RH0o4H2L._SX325_BO1,204,203,200_.jpg',
      description: "“Radiant as [To the Lighthouse] is in its beauty, there could never be a mistake about it: here is a novel to the last degree severe and uncompromising. I think that beyond being about the very nature of reality, it is itself a vision of reality.”—Eudora Welty, from the Introduction.The serene and maternal Mrs. Ramsay, the tragic yet absurd Mr. Ramsay, and their children and assorted guests are on holiday on the Isle of Skye. From the seemingly trivial postponement of a visit to a nearby lighthouse, Woolf constructs a remarkable, moving examination of the complex tensions and allegiances of family life and the conflict between men and women.",
      publish_date: 'May 5, 1927',
    },
    {
      title: 'Great Expectations',
      author: 'Charles Dickens',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/410lfZOQI6L._SY291_BO1,204,203,200_QL40_.jpg',
      description: "
      Charles Dickens's Great Expectations charts the course of orphan Pip Pirrip's life as it is transformed by a vast, mysterious inheritance. A terrifying encounter with the escaped convict Abel Magwitch in a graveyard on the wild Kent marshes; a summons to meet the bitter, decrepit Miss Havisham and her beautiful, cold-hearted ward Estella at Satis House; the sudden generosity of a mysterious benefactor - these form a series of events that change the orphaned Pip's life forever, and he eagerly abandons his humble station as an apprentice to blacksmith Joe Gargery, beginning a new life as a gentleman. Charles Dickens's haunting late novel depicts Pip's education and development through adversity as he discovers the true nature of his identity, and his 'great expectations'. This definitive version uses the text from the first published edition of 1861. It includes a map of Kent in the early nineteenth century, and appendices on Dickens's original ending and his working notes, giving readers an illuminating glimpse into the mind of a great novelist at work.

      For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.",
      publish_date: '1861',
    },
    {
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      img_url: 'https://images-na.ssl-images-amazon.com/images/I/51ZxSRLRUpL._SY291_BO1,204,203,200_QL40_.jpg',
      description: "The hero-narrator of THE CATCHER IN THE RYE is an ancient child of sixteen, a native New Yorker named Holden Caulfield. Through circumstances that tend to preclude adult, secondhand description, he leaves his prep school in Pennsylvania and goes underground in New York City for three days.

      The boy himself is at once too simple and too complex for us to make any final comment about him or his story. Perhaps the safest thing we can say about Holden is that he was born in the world not just strongly attracted to beauty but, almost, hopelessly impaled on it.

      There are many voices in this novel: children's voices, adult voices, underground voices--but Holden's voice is the most eloquent of all. Transcending his own vernacular, yet remaining marvelously faithful to it, he issues a perfectly articulated cry of mixed pain and pleasure. However, like most lovers and clowns and poets of the higher orders, he keeps most of the pain to, and for, himself. The pleasure he gives away, or sets aside, with all his heart. It is there for the reader who can handle it to keep.",
      publish_date: '1951',
    },
  ]
)
