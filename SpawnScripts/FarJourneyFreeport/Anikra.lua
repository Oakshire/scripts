--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Anikra.lua
    Script Author  : Ememjr
    Script Date    : 2019.05.11 03:05:38
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Do you want to call down the Drake?")
    Dialog.AddOption("Yes, I want to see him in action!", "callDrake")
    Dialog.AddOption("Hell No!")
    Dialog.Start()
end

function callDrake(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local drake = GetSpawn(NPC, 270013)
    if drake ~= nil then
        AddTimer(drake, 5000, "startanimation")
	Say(NPC, "Drake should be flying")
		
	AddTimer(drake, 31000, "stopanimation")
	Say(NPC, "Drake should be gone now")
    end
end


--[[
function callDrake(NPC, Spawn)
    FaceTarget(NPC, Spawn)
Say(NPC,"I have made it past FaceTarget")
    local drake = GetSpawn(Spawn, 270013)
Say(NPC, "I have set the local drake to the spawn id")
Say(NPC, "Test " .. drake)
    SpawnSet(drake, "visual_state", 10783)

end
]]--

function respawn(NPC)

end
