--[[
    Script Name    : SpawnScripts/qeynos_combined01/Concordiumfictionandmythbooksstack.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.31 11:05:17
    Script Purpose : 
                   : 
--]]

local PureMagic = 5572

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search Books' then
    local con = CreateConversation()
    AddConversationOption(con, "\"The Words of Pure Magic\"", "Magic")
    AddConversationOption(con, "Stop Browsing.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "This stack of books seems to be filled with fictional material. Novels intended for both entertainment and mythical accounts can be found here. ")
    end
end

function respawn(NPC)
	spawn(NPC)
end

function Close(NPC,Spawn)
    CloseConversation(NPC,Spawn)
    end

function Magic(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic1")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Dear reader, I bring to you what you already have. This world of ours is crossed by a great many powers that bind life together as nails and glue bind two boards. Without the nails and glue there would be no hull or no wall to a greater thing. All that we know is bound by forces greater than the planes themselves. And from one of these forces the gift of Druzaic comes to us.")
end

function Magic1(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic2")
    AddConversationOption(con, "Previous page.","Magic")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Druzaic is the true language of the arcane. The forces of magic can only be represented by most powerful of symbols, symbols so complex and enlightened that they breathe a sentience to the beholder, but only the beholder that can understand the language of Druzaic. I comprehend this language of true magic and I offer my knowledge to you.")
end

function Magic2(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic3")
    AddConversationOption(con, "Previous page.","Magic1")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Druzaic originates in a well of knowledge greater than all New Tanaan can offer. This well is all around us and is part of everything we see and are, it is the binding force of magic. Although this force is one of many that bind our realm, it is the only one to my knowledge that has presented corporeal gifts unto our world. It is from these gifts that I have deciphered Druzaic.")
end

function Magic3(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic4")
    AddConversationOption(con, "Previous page.","Magic2")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Druzaic has always existed, but only now has it made its way to Norrath. I am a seeker of knowledge bound to no emperor or overlord. The knowledge of this world shall not be bound to a state and confined within vaults of knowledge. I trek for the freedom of knowledge and in my journeys across these Shattered Lands I have encountered sights both wondrous and shocking, but I have yet to encounter anything like the Druzaic Shrines. ")
end

function Magic4(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic5")
    AddConversationOption(con, "Previous page.","Magic3")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "As I traverse the stormy highlands of the once plains I first gazed upon the beauty of the Druzaic Shrine. At first it was a glint from afar that called to me, beckoned me in some hypnotic fashion like a siren to the sailor. As I drew closer I could see the aura of magnificence sparkling and swirling about, I added haste to my steps.")
end

function Magic5(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic6")
    AddConversationOption(con, "Previous page.","Magic4")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "I came upon the Druzaic Shrine and found myself in awe of the splendor that danced all about. I must have been in a trance for days my thirst and hunger fed by the song of the shrine. Finally my eyes began to clear and I found myself bolts away from the shrine, partially bathed in its brilliance. Now with my senses intact I was finally able to gaze upon the shrine and record my sight.")
end

function Magic6(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic7")
    AddConversationOption(con, "Previous page.","Magic5")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "All about the image I found runes, symbols... a form of alphabet. As I stood there studying these runes thinking I would never be able to decipher such a complex code the shrine began to hum. The rhythm of the shrine began to seep into my mind and for an instance I could begin to read the runes, and then the unexpected occurred- the shrine vanished!")
end

function Magic7(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic8")
    AddConversationOption(con, "Previous page.","Magic6")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Where once it did sit the Druzaic Shrine was no more! The beauty of the shrine had vanished before my eyes taking with it the key to a new language, a language of magic. I was on the brink of discovery and in an instant it was swiped from me. I wept for the grandeur that was almost comprehended, having seen a glimpse of arcane purity.")
end

function Magic8(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic9")
    AddConversationOption(con, "Previous page.","Magic7")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "The days went on and my exploration of the Shattered Lands had only begun. I continued on recording my sights, sights that could not compare to the song of the Druzaic Shrine. I had met up with my friend from ages past as he toured the land taking notes to be shared with all Norrathians. I too wished to share my knowledge and wished to share what would have been a new arcane language if the shrine would never have left me. I was alone with memories from within and beyond, words of pure magic.")
end

function Magic9(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic10")
    AddConversationOption(con, "Previous page.","Magic8")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "We had sailed to new lands together, my old friend and I. We walked over dangerous lands and all the while I believed the shrine to be gone forever. It was at this end of hope that the sound overtook my mind yet again, I could hear the song of the shrine! I swiped my friend's magic boots, boots of great haste, with them I soon found myself face to face with the shrine again, or so I thought.")
end

function Magic10(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic11")
    AddConversationOption(con, "Previous page.","Magic9")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "What I saw before me sang the song of the shrine, but contained runes of a different sort. This shrine was a member of the greatness that the first shrine was. With it I listened and learned more of the language unknown. I was yet again in a trance when my old friend awoke me, he had finally found me after three moons passed. As he shouted at me for foolish ventures we both were interrupted by the farewell of the new shrine. It was gone in an instant just as the one before. ")
end

function Magic11(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic12")
    AddConversationOption(con, "Previous page.","Magic10")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "Weeks passed and my friend and I had almost lost interest in our conversations of the shrine. We found ourselves on a more terrestrial wonder, the extreme grandeur of a land ablaze- Lavastorm! It was on this land that I encountered another friend from my past, the first shrine!")
end

function Magic12(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic13")
    AddConversationOption(con, "Previous page.","Magic11")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "The shrine had appeared to me, popped into existence in the blink of an eye right before us as if it was there all the time. What was amazing was that when at first I met the shrine it was spellbinding and it's runes indecipherable, but now I could partially comprehend what I read upon the shrine. The shrine's language was almost mine, but I could learn no more from this one.")
end

function Magic13(NPC, Spawn, SpellName)
    local con = CreateConversation()
    AddConversationOption(con, "Next page.", "Magic14")
    AddConversationOption(con, "Previous page.","Magic12")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "My friend and I stayed at the shrine and planned to make camp there, but the dangers of the region forced us to abandon our safe haven. I left that land with more than the sights I had seen, I knew now that there were a few more of these shrines, I could feel them. I bid farewell to my friend as he boarded the Far Trotter for other sights. I must go on alone in search of the remaining shrines.")
end

function Magic14(NPC, Spawn, SpellName)
    local con = CreateConversation()
    if not HasQuest(Quest,PureMagic) and not HasCompletedQuest(Spawn,PureMagic)then
    AddConversationOption(con, "Commit this tale to memory.", "MagicStart")
    end
    AddConversationOption(con, "Previous page.","Magic13")
    AddConversationOption(con, "Close the book.","Close")
    StartDialogConversation(con, 1, NPC, Spawn, "I could tell you the end of this tale dear reader, but the mystery must not be destroyed. In a sense the mystery was what aided in my comprehension of the new language of arch mages and magical beasts. I know Druzaic and you now know it lives in our realm. Seek the splendor and song when you are in your journeys. Seek the dancing lights and the brilliant spheres of Kab, Zet, Uzu and Myr. These are your keys to Druzaic, language of pure magic.")
end

function MagicStart(NPC, Spawn, SpellName)
OfferQuest(NPC,Spawn,PureMagic)
CloseConversation(NPC,Spawn)
end