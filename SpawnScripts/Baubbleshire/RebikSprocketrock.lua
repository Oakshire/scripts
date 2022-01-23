--[[
	Script Name	: SpawnScripts/Baubbleshire/RebikSprocketrock.lua
	Script Purpose	: Rebik Sprocketrock 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]
local Acidic = 5449

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/rebik_sprocketrock/qey_village06/rebiksprocketrock000.mp3", "", "", 2926752471, 973291816, Spawn)
		if GetQuestStep (Spawn, Acidic) == 1 then
        AddConversationOption(conversation, "Do you ever entcounter a lock you can't pick?", "Offer")
        end
	AddConversationOption(conversation, "Well then, I guess I'll let you get back to your work.")
	StartConversation(conversation, NPC, Spawn, "Well met, good friend!  I'm  busy working on this new lock here!  I think it'll be unpickable once I'm done!")

            
end
function Offer(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I have something that may interest you", "Delivered2")
    AddConversationOption(conversation, "Well, good luck with that.")
    StartConversation(conversation, NPC, Spawn, "As a matter of fact, I am beside myself with this lock here. It is unpickable! Blasted thing doesn't even have a keyhole!")
end   

function Delivered(NPC, Spawn)
    FaceTarget(NPC, Spawn)
   -- PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Please be careful. It is potent.", "Delivered2")
    AddConversationOption(conversation, "Wait, nevermind.")
    StartConversation(conversation, NPC, Spawn, "Ah! Let's see... A beaker of... mysterious fluid? Where did you... Oh, nevermind. Let me see it!")
end   

function Delivered2(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	PlayAnimation(NPC, "10748",Spawn)
    --PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Enjoy, just keep away from my locks.", "Reward")
  StartConversation(conversation, NPC, Spawn, "I'll just take a small drop the lock, here... and... WHAT? It melted the whole thing! Yes! I'll take this off your hands. Here, take some coin and my old lockpick. I won't be needing it anymore.")
end   


function Reward(NPC, Spawn)
	SetStepComplete(Spawn, Acidic, 1)
    end