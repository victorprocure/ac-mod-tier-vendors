require("tier1vendors")
require("tier2vendors")
require("tier3vendors")
require("TierVendor")

local NPC_TIER1 = 200000
local NPC_TIER2 = 200001
local NPC_TIER3 = 200002

tier1Vendor = TierVendor.new(NPC_TIER1, VENDOR_TIER1_ITEMS, TIER1_CLASS_VENDORS)
tier2Vendor = TierVendor.new(NPC_TIER2, VENDOR_TIER2_ITEMS, TIER2_CLASS_VENDORS)
tier3Vendor = TierVendor.new(NPC_TIER3, VENDOR_TIER3_ITEMS, TIER3_CLASS_VENDORS)


RegisterCreatureGossipEvent(tier1Vendor:GetEntry(), EVENT_ONGOSSIPHELLO, TierVendor.GossipOnHello)
RegisterCreatureGossipEvent(tier1Vendor:GetEntry(), EVENT_ONGOSSIPSELECT, TierVendor.GossipOnSelectLambda(tier1Vendor))

RegisterCreatureGossipEvent(tier2Vendor:GetEntry(), EVENT_ONGOSSIPHELLO, TierVendor.GossipOnHello)
RegisterCreatureGossipEvent(tier2Vendor:GetEntry(), EVENT_ONGOSSIPSELECT, TierVendor.GossipOnSelectLambda(tier2Vendor))

RegisterCreatureGossipEvent(tier2Vendor:GetEntry(), EVENT_ONGOSSIPHELLO, TierVendor.GossipOnHello)
RegisterCreatureGossipEvent(tier2Vendor:GetEntry(), EVENT_ONGOSSIPSELECT, TierVendor.GossipOnSelectLambda(tier3Vendor))

local function GMLogin(event, player)
    if(player:GetGMRank() >1)then
        SendWorldMessage("|CFFFF0303[mod-tier-vendors]|r is loaded")
        SendWorldMessage("Add Tier1 Vendor with: .npc add "..NPC_TIER1)
        SendWorldMessage("Add Tier2 Vendor with: .npc add "..NPC_TIER2)
        SendWorldMessage("Add Tier3 Vendor with: .npc add "..NPC_TIER3)
    end
end
RegisterPlayerEvent(3, GMLogin)

print("[Mod-Tier-Vendors]: Loaded")