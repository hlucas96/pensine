tome1 = Entity.create(title: "Harry Potter à l'École des Sorciers", title_en: "Harry Potter and the Philosopher's Stone")

t1_c1 = Chapter.create(entity: tome1, chapter_id: 1, title: "Le survivant", title_en: "The Boy Who Lived", summary: "Whaa")
t1_c2 = Chapter.create(entity: tome1, chapter_id: 2, title: "Un vitre disparait", title_en: "The Vanishing Glass", summary: "Whaa")

quote1 = Quote.create(content: "Mr et Mrs Dursley, qui habitaient au 4, Privet Drive, avaient toujours affirmé
  avec la plus grande fierté qu'ils étaient parfaitement normaux, merci pour eux. Jamais quiconque n'aurait
  imaginé qu'ils puissent se trouver impliqués dans quoi que ce soit d'étrange ou de mystérieux. Ils n'avaient
  pas de temps à perdre avec des sornettes.",
  content_en: "Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that they were perfectly
  normal, thank you very much. They were the last people you'd expect to be involved in anything strange or
  mysterious, because they just didn't hold with such nonsense.", chapter: t1_c1)

quote2 = Quote.create(content: "Mr Dursley dirigeait la Grunnings, une entreprise qui fabriquait des perceuses.
  C'était un homme grand et massif, qui n'avait pratiquement pas de cou, mais possédait en revanche une moustache
  de belle taille. Mrs Dursley, quant à elle, était mince et blonde et disposait d'un cou deux fois plus long que
  la moyenne, ce qui lui était fort utile pour espionner ses voisins en regardant par-dessus les clôtures des
  jardins.",
  content_en: "", chapter: t1_c1)
quote3 = Quote.create(content: "— C'est amusant de vous voir ici, professeur McGonagall, dit-il. [...]<br>
  — Comment avez-vous su que c'était moi ? demanda-t-elle.<br>
  — Mon cher professeur, je n'ai jamais vu un chat se tenir d'une manière aussi raide.<br>
  — Vous aussi, vous seriez un peu raide si vous restiez assis toute une journée sur un mur de briques, répondit le professeur McGonagall.",
  content_en: '"Fancy seeing you here, Professor McGonagall."
  "How did you know it was me?" she asked.
  "My dear Professor, I \'ve never seen a cat sit so stiffly."
  "You\'d be stiff if you\'d been sitting on a brick wall all day," said Professor McGonagall."', chapter: t1_c1)

char1 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley", avatar: File.new("app/assets/images/characters/dursley_vernon.png")
char2 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley", avatar: File.new("app/assets/images/characters/dursley_petunia.png")
char3 = Character.create name: "Albus Dumbledore", name_en: "Albus Dumbledore", avatar: File.new("app/assets/images/characters/dumbledore_albus.png")
char4 = Character.create name: "Minerva McGonagall", name_en: "Minerva McGonagall", avatar: File.new("app/assets/images/characters/mcgonagall_minerva.png")

r_charac1 = RelatedCharacter.create quote: quote1, character: char1
r_charac2 = RelatedCharacter.create quote: quote1, character: char2
r_charac3 = RelatedCharacter.create quote: quote2, character: char1
r_charac4 = RelatedCharacter.create quote: quote2, character: char2
r_charac5 = RelatedCharacter.create quote: quote3, character: char3
r_charac6 = RelatedCharacter.create quote: quote3, character: char4

Rating.create quote: quote1, value: 2
Rating.create quote: quote1, value: 1
Rating.create quote: quote1, value: 3
Rating.create quote: quote1, value: 3
Rating.create quote: quote2, value: 2
Rating.create quote: quote2, value: 2
Rating.create quote: quote2, value: 5
