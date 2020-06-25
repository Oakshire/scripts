--[[
    Script Name    : SpawnScripts/QeynosHarbor/Aliindar.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.23 03:01:35
    Script Purpose : Broker Aliindar's Voiceover files. (Note: they aren't playing not sure why.)
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
    --PlayVoice(Spawn, "voiceover/english/broker_aliidar/qey_harbor/031_con_merchant_aliindar_erudite_2_hail_52cd8074.mp3", mp3_key1, mp3_key2)
    Say(NPC, "Something something hailed voiceover here", Spawn)
end

function respawn(NPC)

end

function InRange(NPC, Spawn)
    --PlayVoice(Spawn, "voiceover/english/broker_aliidar/qey_harbor/031_con_merchant_aliindar_erudite_2_aoi_1fefa590.mp3", mp3_key1, mp3_key2)
    Say(NPC, "Something Something area voice trigger here")
end

function LeaveRange(NPC, Spawn)
end

