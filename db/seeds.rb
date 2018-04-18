tome1 = Entity.create(title: "Harry Potter à l'École des Sorciers", title_en: "Harry Potter and the Philosopher's Stone")

t1_c1 = Chapter.create(entity: tome1, title: "Le survivant", title_en: "The Boy Who Lived", summary: "Whaa")

quote1 = Quote.create(content: "Mr et Mrs Dursley, qui habitaient au 4, Privet Drive, avaient toujours affirmé
  avec la plus grande fierté qu'ils étaient parfaitement normaux, merci pour eux. Jamais quiconque n'aurait
  imaginé qu'ils puissent se trouver impliqués dans quoi que ce soit d'étrange ou de mystérieux. Ils n'avaient
  pas de temps à perdre avec des sornettes.",
  content_en: "Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that they were perfectly
  normal, thank you very much. They were the last people you'd expect to be involved in anything strange or
  mysterious, because they just didn't hold with such nonsense.", chapter: t1_c1)
