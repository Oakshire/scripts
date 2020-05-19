--[[
	Script Name	:	SpawnScripts/qeynos_combined01/DylanIronforge.lua
	Script Purpose	:	Dylan Ironforge Dialog
	Script Author	:	premierio015
	Script Date	:	03.05.2020
	Script Notes	:	
--]]

local CalcifiedBoneOfTheTortured = 527

function spawn (NPC)

end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/dylan_ironforge/qey_north/dylanironforge001.mp3", "", "", 1912505605, 686002494, Spawn)
AddConversationOption(conversation, "I agree.")
AddConversationOption(conversation, "I don't think so.")
if HasQuest(Spawn, CalcifiedBoneOfTheTortured) and GetQuestStep(Spawn, CalcifiedBoneOfTheTortured) == 2 then
AddConversationOption(conversation, "Brawler Bently said to bring this bone to you.", "Bone")
else
	end
StartConversation(conversation, NPC, Spawn, "Nothing's cozier than a nice hot forge!")
	end

function Bone(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/dylan_ironforge/qey_north/dylanironforge002.mp3", "", "", 1305798957, 3393168774, Spawn)
AddConversationOption(conversation, "Can you make it into a weapon?", "Weapon")
StartConversation(conversation, NPC, Spawn, "He did, did he?  I suppose he means to collect on that favor, eh?  Let me see that bone.  Hmm ... I've never worked with bone before, but this is incredibly strong.  Yes ... I can make something out of it.  What would you like?")
end

	
function Weapon(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/dylan_ironforge/qey_north/dylanironforge003.mp3", "", "", 2500945418, 3245432018, Spawn)
AddConversationOption(conversation, "Thank you Dylan.", "Reward")
StartConversation(conversation, NPC, Spawn, "All right, this shouldn't take long.  A little carving here ... a little shaping there ... and ... voila!  Not too bad for one of my first works of bone, if I do say so myself.  Now Bently can stop bugging me about that favor. HAHA!")
end


function Reward(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, CalcifiedBoneOfTheTortured, 2)
end
