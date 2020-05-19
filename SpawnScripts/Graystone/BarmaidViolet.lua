--[[
	Script Name	: SpawnScripts/Graystone/BarmaidViolet.lua
	Script Purpose	: Barmaid Violet <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Please mind the plates, they're very hot.", "scold", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Welcome friend, welcome.  I hope you brought your appetite with you!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Fresh baubbleberry pie, come and get some while it's hot!", "beckon", 1689589577, 4560189, Spawn)
	else
	end

end

