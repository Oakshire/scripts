--[[
	Script Name	: SpawnScripts/Baubbleshire/RebikSprocketrock.lua
	Script Purpose	: Rebik Sprocketrock 
	Script Author	: Dorbin
	Script Date	: 2022.01.15
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
        AddConversationOption(conversation, "I wonder if your lock would stand up to this stuff I found.", "Offer")
        end
	AddConversationOption(conversation, "Well then, I guess I'll let you get back to your work.")
	StartConversation(conversation, NPC, Spawn, "Well met, good friend!  I'm  busy working on this new lock here!  I think it'll be unpickable once I'm done!")

            
end
function Offer(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I think you'd be interested in this liquid then...", "Delivered2")
    AddConversationOption(conversation, "Wait, forget I said anything.")
    StartConversation(conversation, NPC, Spawn, "What stuff?  You know there isn't anyone who can open this without the key!  It's perfect. Completely impervious to tampering fingers!  You know, I made it because things keep going missing around here.")
end   

function Delivered(NPC, Spawn)
    FaceTarget(NPC, Spawn)
   -- PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Take a look for yourself - pour a bit on the lock...", "Delivered2")
    AddConversationOption(conversation, "Wait, nevermind.")
    StartConversation(conversation, NPC, Spawn, "What's this stuff supposed to do anyway, hmm?  Does it go into the lock and swim around to open the tumblers?  Release tiny little tinkered men in to open up the lock from the inside? If not, I'm positive this will hold up!")
end   

function Delivered2(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	PlayAnimation(NPC, "10748",Spawn)
    --PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Okay... here goes...", "Delivered3")
  StartConversation(conversation, NPC, Spawn, "Fine, fine.  I'll give it a shot, but I'm sure, sure, SURE  that it will hold up to whatever you can throw at it!  Pour a bit on the lock. You'll see!")
end   
function Delivered3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Erm... okay... I guess I won't turn the coin down.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Oh, my!  That stuff is eating the whole lock!  And the table leg!  I MUST HAVE IT!  How much? How much!?!  Hand it here! I'll pay you ten times its worth!  Here!  Take all my coins!  Oh what could I possibly make with this? The possibilities are endless!")
end   

function Reward(NPC, Spawn)
	SetStepComplete(Spawn, Acidic, 1)
    end