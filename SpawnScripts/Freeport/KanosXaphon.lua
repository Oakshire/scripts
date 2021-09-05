--[[
    Script Name    : SpawnScripts/Freeport/KanosXaphon.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 09:06:46
    Script Purpose : 
                   : 
--]]
local KeyToFallenGate = 5252

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
ProvidesQuest(NPC, KeyToFallenGate)
SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, KeyToFallenGate) == 5 then
RemoveSpawnAccess(NPC, Spawn)
else
AddSpawnAccess(NPC, Spawn)
end
   end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	 if not HasQuest(Spawn, KeyToFallenGate) and not HasCompletedQuest(Spawn, KeyToFallenGate ) then
	AddConversationOption(conversation, "You underestimate me. I have the ability.", "Option1")
	elseif GetQuestStep(Spawn, KeyToFallenGate) == 4 then
	AddConversationOption(conversation, "I've the information you need from Tundis N'oxyle.", "Option4")
	elseif GetQuestStep(Spawn, KeyToFallenGate) == 6 then
    AddConversationOption(conversation, "The deed is done, as you can see.", "Option8")
	end
	AddConversationOption(conversation, "Okay, I'm going.")
	StartConversation(conversation, NPC, Spawn, "You mean nothing to me, whelp. I seek one with ability enough to do my bidding.  Now, back out the door whence you came with your tail between your legs before I disembowel you and leave your entrails for the vermin infesting this filthy human city.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon000.mp3", "", "", 2038969056, 4166254179, Spawn)
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Any task you have, I can manage.", "Option2")
	AddConversationOption(conversation, "I think you're the one with delusions of grandeur - I'm going now.")
	StartConversation(conversation, NPC, Spawn, "I've no problem sending you to your death, if you seek it so quickly.  Now, are you sure you possess the fortitude to attempt what I need done? Or are you just another simpering coward, emboldened by a sword in the hand and the delusion of your own greatness?")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon001.mp3", "", "", 3055364853, 457504919, Spawn)
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Why don't you just join their cause?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Then listen closely.  Attention to detail is essential.  I need a key to the Fallen Gate, and you're going to find one for me.  Too long have I been away from my home, and those foolish Thexian loyalists have finally found a way back into Neriak ... or at least, that's what my informants told me.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon002.mp3", "", "", 3454315360, 3694713407, Spawn)
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "So what do you need me for?", "offer")
	StartConversation(conversation, NPC, Spawn, "I've not invited you to ask questions! Hold your tongue.  I do not desire to see the Thex dynasty restored. I bear no love for those spineless worms.  I'm certain they're the reason Neriak fell in the first place.  What I do desire is to return to the halls of my birth with my bloody blade in hand and a prayer to Innoruuk on my lips.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon003.mp3", "", "", 2172761836, 3484681636, Spawn)
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "There is to be a ceremony to grant me a key, along with entrance to the Thexian Loyalists.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Perhaps you've more mettle than I gave you credit.  The common weakness of the trash who dwell in this city has jaded me to the possibility that some gutter filth are not completely worthless. If you've information, out with it.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon005.mp3", "", "", 3836396074, 2873645226, Spawn)
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn,  KeyToFallenGate, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon006.mp3", "", "", 1877907692, 3714053371, Spawn)
	AddConversationOption(conversation, "Your bidding will be done.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Lucan himself could not have ordained a better time! You will go to this meeting.  Slaughter every Thexian you come across and take a key for yourself as well as one for me.  I will be along as soon as I am able. I have other matters to attend.  I'm willing to venture that you alone cannot complete this task.  I hope you have friends who are willing to assist..")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "I am ready to go now.", "Option7")
	AddConversationOption(conversation, "Give me a few moments to gather my allies.")
	StartConversation(conversation, NPC, Spawn, "Will it?  Very well. I'll lead you to the place, from there you're on your own. I've other interests to attend in the meantime.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon009.mp3", "", "", 1745935557, 27393405, Spawn)
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I've got a bad feeling about this...", "ZoneToMeeting")
	StartConversation(conversation, NPC, Spawn, "Come then, I'll show you where you need to go.")
	PlayFlavor(NPC, "voiceover/english/optional1/kanos_x_aphon/fprt_north/kanosxaphon008.mp3", "", "", 1609094361, 3304823341, Spawn)
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn, KeyToFallenGate, 6)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Why you... I oughta... GAH!", "ZoneToFreeport")
	StartConversation(conversation, NPC, Spawn, "Well done! You served me well. I'll have more work for you in the future. In the meantime, go far from here.  I will clean up this mess and make certain that no one hears of what transpired today ... so long as you continue to do my bidding, of course.")
	PlayFlavor(NPC, "voiceover/english/kanos_x_aphon/fprt_north/kanosxaphon010.mp3", "", "", 2746547542, 1484917117, Spawn)
end


function ZoneToMeeting(NPC, Spawn)
 Zone(GetZone(473), Spawn)
end

function ZoneToFreeport(NPC, Spawn)
    Zone(GetZone(559), Spawn) 
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, KeyToFallenGate)
end


   

function respawn(NPC)
	spawn(NPC)
end