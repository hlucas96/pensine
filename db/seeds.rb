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

char1 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char2 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char3 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char4 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char5 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char6 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char7 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char8 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char9 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char10 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char11 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char12 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"
char13 = Character.create name: "Vernon Dursley", name_en: "Vernon Dursley"
char14 = Character.create name: "Pétunia Dursley", name_en: "Petunia Dursley"

r_charac1 = RelatedCharacter.create quote: quote1, character: char1
r_charac2 = RelatedCharacter.create quote: quote1, character: char2
r_charac3 = RelatedCharacter.create quote: quote2, character: char1
r_charac4 = RelatedCharacter.create quote: quote2, character: char2
