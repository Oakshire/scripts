--[[
    Script Name    : SpawnScripts/Commonlands/ImpeliaAbettus.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 09:02:26
    Script Purpose : 
                   : 
--]]

ZarvonLegacy = 446


function spawn(NPC)
ProvidesQuest(NPC, ZarvonLegacy)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/impelia_abettus/commonlands/qst_impeliaabettus.mp3", "", "", 1488175295, 2563794, Spawn)
	conversation = CreateConversation()
	if not HasQuest(Spawn, ZarvonLegacy) and not HasCompletedQuest(Spawn, ZarvonLegacy) then
	AddConversationOption(conversation, "What disease have you contracted?", "dlg1")
	end
	AddConversationOption(conversation, "Thanks for the warning.")
	StartConversation(conversation, NPC, Spawn, "Please.  Don't come near me.  I'm very sick right now, and I don't want to harm anyone else.  Let me just pass.  In peace.")
end

function respawn(NPC)

end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
 AddConversationOption(conversation, "What were you originally seeking?", "dlg2")
  AddConversationOption(conversation, "What was this other threat?", "dlg7")
  AddConversationOption(conversation, "I don't have time for the feverish ravings of the mortally ill. Begone, leper.")
  StartConversation(conversation, NPC, Spawn, "There ... maybe I can talk for a few minutes without coughing up a lung.  I don't know what I have, but I know where I got it.  The irony is that I was looking for information about the source of one threat, and wound up learning more about a completely different, yet just as deadly, menace.")

end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
  AddConversationOption(conversation, "So what you're saying is that he was making zombies?", "dlg3")
  StartConversation(conversation, NPC, Spawn, "While I was pursuing my original assignment, I came across an old manuscript that I traced back to being penned by Zarvonn, the Mad Mage.  It took me a great while to translate it, but it seems he was researching how to reanimate dead bodies using the flesh of others.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "What do you mean by first hand experience?", "dlg4")
 StartConversation(conversation, NPC, Spawn, "I'm not too sure about that anymore.  I think he was trying to make something different, but wound up using Necromancy rather than whatever other force he was using to create his original versions.  In his research, he was using specimens that already existed, but weren't undead.  I can attest to that from first hand experience.")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "You mean the Dark Elves allowed someone to build a castle in their forest?", "dlg5")
  StartConversation(conversation, NPC, Spawn, "I tracked down where he found his original test subjects, and it led me into the Nektulos Forest.  It seems the ''golems'' he was originally using were coming from a mysterious manor, more a castle, actually.  I wasn't able to find out too much about the origins of the place, but it surely wasn't Teir'Dal in origin.")
 end
 
 function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Why so?", "dlg6")
 StartConversation(conversation, NPC, Spawn, "There's a rather lengthy story to the whole place, but I'm not sure what to believe anymore, considering what I saw in there.  Apparently, the place is called Nektropos Castle, and was originally built by someone named Everling.  This was so long ago that the facts have been lost through time.  Maybe some of the Teir'Dal that live in that dark forest might know more, but I already know more than I want to.")
 end


function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I'm interested in learning more about this Zarvonn you mentioned.", "dlg7")
  AddConversationOption(conversation, "I'd like to track down this tower you mentioned.  Where can I find these nomads?", "offer")
StartConversation(conversation, NPC, Spawn, "I wasn't able to find out if Zarvonn ever moved to Nektropos Castle, but if he did, he'd be dead by now.  That place is crawling with golems, and I'm certain malevolent spirits roam those halls.  I don't know if my sickness came from those golems, the spirits, or even something more ... frightening.  Look, I don't want to talk about this anymore.  If my benefactors want to know more about Zarvonn's tower, they can go speak with the nomads.")
end

function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What happened to him?", "dlg8")
StartConversation(conversation, NPC, Spawn, "I have been ... commissioned ... to find out what happened to Zarvonn, the Mad Mage.  Several hundred years ago, before Necromancy was widely accepted as a scholarly pursuit, Zarvonn explored the mysteries of the dead.  As a matter of fact, much of his initial research is still being taught at the Academy of Arcane Sciences.")
end

function dlg8(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Did he ever take his revenge out on Freeport?", "dlg9")
StartConversation(conversation, NPC, Spawn, "He was kicked out of the Academy for his practices and vowed revenge upon all of Freeport.  He ventured out into the Commonlands and continued his research, taking up residence in a tower made from bone.  As time went on, he eventually remodeled the tower into a more contemporary design, one fashioned from old stones he specially selected.")
end

function dlg9(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "So he wasn't behind the raising of the undead?", "dlg10")
 StartConversation(conversation, NPC, Spawn, "Not exactly.  A hundred years ago, undead started appearing in much greater frequency in the Commonlands.  This alarmed the Academy to the point that they convinced the Militia to stop his threat by force.  When they arrived at his tower, he was gone.  The story goes, that when they searched the place, they found evidence proving he had been gone for a number of decades.")
 end

function dlg10(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Who are these benefactors you're referring to and why do they care?", "dlg11")
StartConversation(conversation, NPC, Spawn, "Or so the Academy believed ... they just wrote it off to the undead venturing out from the Kithicor Forest.  There was once a forest to the west of the Commonlands before the Shattering.  Now that a decade has passed since the Shattering ended, my... benefactors... wish to continue their research into the mysterious disappearance of Zarvonn.")
end

function dlg11(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Oh.  Ummm... perhaps we could just talk about why they care about this Zarvonn guy?", "dlg12")
StartConversation(conversation, NPC, Spawn, "It would be best if I didn't mention them.  The less you know, the safer you are.  I hate them with a seething passion, and if I still had my strength I'd slit every one of their throats ... who am I kidding ... I'm powerless against them. They own me more than any thrall could ever be owned.")
end

function dlg12(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Have you found any truth to this story?", "dlg13")
 StartConversation(conversation, NPC, Spawn, "Yes, back to what I was saying.  They feel that Zarvonn is still around ... somewhere.  According to the information I was given, they think there is truth to his promise, and that he will return.  The recent return of the undead is making them think he's still alive and is about to follow through with his vow.")
end

function dlg13(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "What do the nomads have to do with this tale?", "dlg14")
 StartConversation(conversation, NPC, Spawn, "I found an old manuscript of his that detailed his attempts at reanimating dead bodies, which ultimately led me to a dark, dark place.  Unfortunately, it was a false lead.  All I gained from that place was this wasting sickness. But I do believe the nomads may know more.")
end

function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "You mentioned a couple of times that you found something else.  What was that?", "dlg2")
  AddConversationOption(conversation, "I'd like to pick up where you left off.  Where can I find these nomads?", "offer")
StartConversation(conversation, NPC, Spawn, "The nomads have been in the Commonlands longer than anyone can remember, at least four hundred years, according to my research.  I found an old scroll that hinted that they may have come from the Thundering Steppes.  Their oral tradition of history through story telling may reveal more.  I have no plans on pursuing this matter anymore, though.  I accept my fate, and don't expect to leave this tower until I've taken my final breath.")
end

function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, ZarvonLegacy)
end
