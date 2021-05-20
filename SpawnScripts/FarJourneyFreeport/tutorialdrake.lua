--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/tutorialdrake.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.18 11:05:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end



function attack(NPC)
	SendStateCommand(NPC, 65)
	AddTimer(NPC, 40000, "drake_rain")
end

function drake_rain(NPC)
	SendStateCommand(NPC, 910)
	AddTimer(NPC, 10000, "drake_stop")
end

function drake_stop(NPC)
	SendStateCommand(NPC, 33678)
end

