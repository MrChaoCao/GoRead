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
  ]
)
