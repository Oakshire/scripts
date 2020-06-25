--[[
	Script Name	: SpawnScripts/Graystone/Dori.lua
	Script Purpose	: Dori <Banker>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Greetin's, young'n. My name's Dori and this here is my bank. As a customer of the Qeynos Exchange, you can be certain your money's safe with us!", "", 1689589577, 4560189, Spawn)
end
