--[[
	Script Name	: SpawnScripts/Castleview/Kruuprum.lua
	Script Purpose	: Kruuprum <General Goods>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_callout _7959ca4b.mp3", "Verily, 'tis fine to havest thou here in Castleview! FroooOOOooaak! Fevalin and I here hath set up a nice arrangement and canst offer thou the widest variety of Qeynosian goods! Come view our wares!", "", 19553490, 2117485462, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail1_9d28d570.mp3", "Were I to possess the time to speak, 'twould be a gracious thing. I must continue selling mine items so I might catch a bite to eat. Mayhaps we can speak again.", "", 2901211010, 2505702223, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail2_9a6056e9.mp3", "'Tis a great day when one browses mine wares. Mine stomach grumbles, yet I have so much to do.", "", 3873091282, 3521185500, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/merchant_kruuprum/qey_village04/100_merchant_left_kuuprum_multhail3_f6fcb534.mp3", "Pray tell, wouldst thou be in possession of the flies? Ah ... I see ... then I shall wait to eat.", "", 1179465815, 2252444306, Spawn)
	end
end