/*Script.Load("lua/MarineTeam.lua")

local orig_MarineTeam_InitTechTree = MarineTeam.InitTechTree
function MarineTeam:InitTechTree()
    -- THIS DOES NOT COUNT AS MODDABLE, UWE
    local orig_PlayingTeam_InitTechTree = PlayingTeam.InitTechTree
    PlayingTeam.InitTechTree = function() end
    
    orig_PlayingTeam_InitTechTree(self)
    
    local orig_TechTree_SetComplete = self.techTree.SetComplete
    self.techTree.SetComplete = function() end
    
    orig_MarineTeam_InitTechTree(self)
    
    self.techTree.SetComplete = orig_TechTree_SetComplete
    
	self.techTree:AddResearchNode(kTechId.ModularExoFissionTech,       kTechId.ExosuitTech, kTechId.None)
    self.techTree:AddResearchNode(kTechId.ModularExoFusionTech,       kTechId.None, kTechId.ModularExoFissionTech)
    self.techTree:AddResearchNode(kTechId.ModularExoAntimatterTech,       kTechId.None, kTechId.ModularExoFusionTech)
    
    self.techTree:SetComplete()
    
    PlayingTeam.InitTechTree = orig_PlayingTeam_InitTechTree
    
end*/
