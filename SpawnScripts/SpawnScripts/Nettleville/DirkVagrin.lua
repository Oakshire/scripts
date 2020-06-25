--[[
	Script Name	: SpawnScripts/Nettleville/DirkVagrin.lua
	Script Purpose	: Dirk Vagrin 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_callout_ab43615b.mp3", "Ehh? Who goes there? You looking for adventure? I bet my shinys will tempt you!", "boggle", 2386377043, 3237731304, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail2_be08c03e.mp3", "Bah!  Off with ye!  These barrels are mine!  Mine!", "", 4248926679, 4124146023, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail1_e70947c7.mp3", "Bah!  Go away or I'll ... I'll ... I don't know.   Just go away!", "", 3343827845, 2701332902, Spawn)
	end
end