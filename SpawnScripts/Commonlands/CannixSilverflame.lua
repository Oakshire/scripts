--[[
    Script Name    : SpawnScripts/Commonlands/CannixSilverflame.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 10:02:00
    Script Purpose : 
                   : 
--]]
local TheReturnOfTheLight = 485

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange")
SetAggroRadius(NPC, 20)
end

function InRange(NPC, Spawn)
if HasCompletedQuest(Spawn, TheReturnOfTheLight) then
RemoveSpawnAccess(NPC, Spawn)
end 
   end

function hailed(NPC, Spawn)
    if not  HasQuest(Spawn, TheReturnOfTheLight) then
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame001.mp3", "", "", 3283011934, 1161547540, Spawn)
	AddConversationOption(conversation, "Are you a guard or something?", "Option1")
	AddConversationOption(conversation, "You're excused.  ")
	StartConversation(conversation, NPC, Spawn, "Greetings to you as well, traveler.  Now if you'll excuse me, I must remain vigilant while this time is appointed unto me.")
	elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 2 or GetQuestStep(Spawn,  TheReturnOfTheLight) == 3 then
	step2or3_progress(NPC, Spawn)
	elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 4 then
    Option4(NPC, Spawn)
    elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 5 then
    step5_progress(NPC, Spawn)
    elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 6 then
    Option6(NPC, Spawn)
    elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 7 or  GetQuestStep(Spawn,  TheReturnOfTheLight) == 8 then
    step7or8_progress(NPC, Spawn)
    elseif  GetQuestStep(Spawn,  TheReturnOfTheLight) == 9 then
    Option7(NPC, Spawn)
    elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 10 then
    step10_progress(NPC, Spawn)
  elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 11 then
      Option10(NPC, Spawn)
   elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 12 then
       step12_progress(NPC, Spawn)
   elseif GetQuestStep(Spawn,  TheReturnOfTheLight) == 13 then
       Option13(NPC, Spawn)
end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame002.mp3", "", "", 1936975525, 2350985185, Spawn )
	AddConversationOption(conversation, "I see. I'll leave you to your thoughts. ")
	if GetQuestStep(Spawn,  TheReturnOfTheLight) == 1 then
	AddConversationOption(conversation, "Maybe a pilgrim would be interested in buying this unique lightstone.", "Option2")
	end
	StartConversation(conversation, NPC, Spawn, "A guard? No. I suppose if I have a title, you can call me a ... a pilgrim.  Yes, just a pilgrim looking for the light of truth.  Aren't we all seeking a little truth in these turbulent times?")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame003.mp3", "", "", 514719331, 2019687176, Spawn)
	AddConversationOption(conversation, "Yes, I could use a little adventure.", "Option3")
	StartConversation(conversation, NPC, Spawn, "No, I'm sorry.  I'm not interested in any local treasures ... wait ... let me see that lightstone.  You're right! This isn't like the other lightstones in these lands.  In fact, I've never seen one like it. Could it be?  Is it beginning?  It's possible, but I must be sure. Will you do something for me?")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn,  TheReturnOfTheLight, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame004.mp3", "", "", 997093089, 3927227010, Spawn)
	AddConversationOption(conversation, "I will return when it is done. ")
	StartConversation(conversation, NPC, Spawn, "Good, good.  You didn't come upon this item by chance. You must be the one to set out on this quest. Seek out both the Mourned and the Forgotten.  One has fallen among brethren, the other alone. Both were valorous on the field of battle. Touch this stone to them and honor both.")
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame006.mp3", "", "", 2082775910, 3850348152, Spawn)
		AddConversationOption(conversation, "Tell me how to increase its power.", "Option5")
	StartConversation(conversation, NPC, Spawn, "The stone you have is glowing again.  This proves the lightstone you have is very unique.  I can show you how to increase its power.  ")
end



function Option5(NPC, Spawn)
    SetStepComplete(Spawn, TheReturnOfTheLight, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will hunt Rama'nai.")
	StartConversation(conversation, NPC, Spawn, "Listen carefully:  The lion has always been a symbol of valor on the battlefield, never retreating from a foe, always protecting his charges. The great beast Rama'nai walks these lands at the head of his pride.  Slay him in honorable combat and dip the stone in his blood.  Return to me when you're done.")
end

function Option6(NPC, Spawn)
    SetStepComplete(Spawn,  TheReturnOfTheLight, 6)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame009.mp3", "", "", 933092014, 3991745317, Spawn)
	AddConversationOption(conversation, "I will find Gaer and Ogof.")
	StartConversation(conversation, NPC, Spawn, "I see you did as you were told. The stone continues to glow brighter.  To increase its power, you must right some wrongs.  Find the orc captains Gaer and Ogof.  They routinely direct their troops to destroy and rob the graves of the ancient Knights of Truth. You must avenge this defilement of the graves; doing so will increase the power of your stone.")
end

function Option7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame011.mp3", "", "", 4172338348, 1148941338, Spawn)
	AddConversationOption(conversation, "Who is this soul?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Excellent.  Greedy orc scavengers will no longer disturb the buried dead. Your stone grows brighter with each deed done in valor.  There is another soul in these lands who needs releasing from the eternal torment that chains him to this realm.  Will you free him?")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame012.mp3", "", "", 1530561048, 1179568761, Spawn)
	AddConversationOption(conversation, "I suppose I am the one to fix all this?", "Option9")
	StartConversation(conversation, NPC, Spawn, "Long ago the Priests of Marr and the Knights of Truth administered to the people of these lands.  The current ruler of Freeport despised these people and managed to kill most of them long before the Shattering. The High Priest at the time was first cursed, then executed and then his corpse was tossed out in these lands for the scavengers to feast on.  His soul hasn't found deserved rest for centuries.")
end


function Option9(NPC, Spawn)
    SetStepComplete(Spawn, TheReturnOfTheLight, 9)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame013.mp3", "", "", 984364583, 3971878128, Spawn)
	AddConversationOption(conversation, "I will release him from his pain.")
	StartConversation(conversation, NPC, Spawn, "Yes, you now bear an object that hasn't been seen on Norrath for centuries.  You hold the essence of the Greater Lightstone.  Defeat the cursed High Priest in battle while the lightstone is in his presence.  The powers of Valor and Truth imbued within will free him from his curse.  ")
end


function Option10(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame015.mp3", "", "", 862085114, 603082398, Spawn)
	AddConversationOption(conversation, "What is it?", "Option11")
	StartConversation(conversation, NPC, Spawn, "Your lightstone glows brilliantly!  Your quest is almost over.  I must ask you to complete a final task. If you do this, I can fully imbue your lightstone.")
end

    
function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame016.mp3", "", "", 2784277299, 2349442251, Spawn)
	AddConversationOption(conversation, "Where can I find this orc?", "Option12")
	StartConversation(conversation, NPC, Spawn, "The elite among the Knights of Truth wielded the magical Swords of Truth. These weapons have been lost for many decades.  News has surfaced that an orc holds the hilt and broken edge of one of these lost blades; you must retrieve its remnants. With these ancient saber pieces I shall complete your Greater Lightstone.")
end


function Option12(NPC, Spawn)
    SetStepComplete(Spawn, TheReturnOfTheLight, 11)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame017.mp3", "", "", 3813681064, 1372487877, Spawn)
	AddConversationOption(conversation, "I'll get the sword back.")
	StartConversation(conversation, NPC, Spawn, "He's a leader among the Bloodskull clan of orcs.  Rumors state his camp lies in a hidden valley close to here.  Unfortunately, I don't know the location of the camp.  You must help me get this sword back into the proper hands; it's sacrilege for such a creature to possess it.")
end


function Option13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame019.mp3", "", "", 3694906098, 1804290878, Spawn)
   	AddConversationOption(conversation, "Here they are.", "Option14")
	StartConversation(conversation, NPC, Spawn, "You did it!  Now hand me the broken sword and your lightstone, and I will completely empower the stone.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame020.mp3", "", "", 2917051615, 1667743786, Spawn)
	AddConversationOption(conversation, "I am not sure what you mean.  I did the work for that, it should be mine!", "Option15")
	StartConversation(conversation, NPC, Spawn, "There!  The Great Lightstone is fully empowered with the essence of Valor, Truth, and Light!  I am truly sorry to have deceived you into thinking you could keep this stone. You must understand, it must stay with my Order. He's returning soon and we must preserve his artifacts to hasten his arrival.  It has truly pained me to speak untruthfully to you. I hope you understand the importance of this matter.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame022.mp3", "", "", 1925599648, 331494401, Spawn)
	AddConversationOption(conversation, "What?", "Finish")
	StartConversation(conversation, NPC, Spawn, "You've been exceptionally brave and valorous in this quest.  If it weren't for the dire need of my order to possess this stone, I'd gladly hand it over to you.  You must understand ... what was that?")
end

function Finish(NPC, Spawn)
	zone = GetZone(NPC)
	LucanicKnightInitiate = SpawnByLocationID(zone, 300580)
	aMilitiaGuard1 = SpawnByLocationID(zone, 300576)
	aMilitiaGuard2 = SpawnByLocationID(zone, 300577)
	PlayFlavor(NPC, "", "We have uninvited guests!  Let's make them feel welcome.", "", 1689589577, 4560189, Spawn)
	AddTimer(NPC, 7000, "set_faction", 1)
end

function set_faction(NPC, Spawn)
SpawnSet(NPC, "faction", 34)
end
  

function death(NPC, Spawn)
if GetQuestStep(Spawn, TheReturnOfTheLight) == 13 then
    SetStepComplete(Spawn, TheReturnOfTheLight, 13)
end
   end
    

-- QUEST STEP PROGRESS
function step2or3progress(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame005.mp3", "", "", 892711252, 1320674484, Spawn)
    	AddConversationOption(conversation, "I'm still looking for them!")
	StartConversation(conversation, NPC, Spawn, "I cannot tell you any more than what I've already said.  Seek out the Mourned and the Forgotten.")
end

function step5_progress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame008.mp3", "", "", 523799042, 3054124923, Spawn)
	AddConversationOption(conversation, "I will find Rama'nai.")
	StartConversation(conversation, NPC, Spawn, "You've not faced the great beast Rama'nai.  Seek him out.")
end

function  step7or8_progress(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame010.mp3", "", "", 3774502752, 2904161395, Spawn)
		AddConversationOption(conversation, "I will find Gaer and Ogof.")
	StartConversation(conversation, NPC, Spawn, "You haven't defeated both orc captains. They still threaten the sacred graves of the Knights of Truth.")
end

function step10_progress(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame014.mp3", "", "", 1292831850, 1992570169, Spawn)
		AddConversationOption(conversation, "I will release him from his curse.")
	StartConversation(conversation, NPC, Spawn, "The cursed High Priest still walks the land.  To free him you must defeat him in the presence of the lightstone.")
end


function step12_progress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame018.mp3", "", "", 623990960, 1621442579, Spawn)
	AddConversationOption(conversation, "I'm working on it.")
	StartConversation(conversation, NPC, Spawn, "I hoped when we met again you would bear the sword the orc leader possesses.  Please, recover the sword from that creature.")
end


function respawn(NPC)

end

