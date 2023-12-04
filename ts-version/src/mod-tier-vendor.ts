import { GENERIC_ITEMS as Tier1GenericVendor, TIER_CLASS_VENDORS as Tier1ClassVendors } from "./Tier1Vendors";
import { GENERIC_ITEMS as Tier2GenericVendor, TIER_CLASS_VENDORS as Tier2ClassVendors } from "./Tier2Vendors";
import { GENERIC_ITEMS as Tier3GenericVendor, TIER_CLASS_VENDORS as Tier3ClassVendors } from "./Tier3Vendors";
import { TierVendor } from "./TierVendor";

const NPC_TIER1 = 200000;
const NPC_TIER2 = 200001;
const NPC_TIER3 = 200002;

const Tier1Vendor = new TierVendor(NPC_TIER1, Tier1GenericVendor, Tier1ClassVendors);
const Tier2Vendor = new TierVendor(NPC_TIER2, Tier2GenericVendor, Tier2ClassVendors);
const Tier3Vendor = new TierVendor(NPC_TIER3, Tier3GenericVendor, Tier3ClassVendors);

const GMLogin = (player: Player) => {
    if (player.GetGMRank() > 1) {
        SendWorldMessage("|CFFFF0303[mod-tier-vendors]|r is loaded")
        SendWorldMessage(`Add Tier1 Vendor with: .npc add ${NPC_TIER1}`)
        SendWorldMessage(`Add Tier2 Vendor with: .npc add ${NPC_TIER2}`)
        SendWorldMessage(`Add Tier3 Vendor with: .npc add ${NPC_TIER3}`)
    }
}

RegisterCreatureGossipEvent(Tier1Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_HELLO, (_: GossipEvents.GOSSIP_EVENT_ON_HELLO, player: Player, creature: Creature | GameObject | Item) => TierVendor.GossipOnHello(player, creature));
RegisterCreatureGossipEvent(Tier1Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_SELECT, (_: GossipEvents.GOSSIP_EVENT_ON_SELECT, player: Player, creature: Player | Creature | GameObject | Item, __: number, intId: number, ___: string, ____?: number) => Tier1Vendor.GossipOnSelect(player, creature, intId));

RegisterCreatureGossipEvent(Tier2Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_HELLO, (_: GossipEvents.GOSSIP_EVENT_ON_HELLO, player: Player, creature: Creature | GameObject | Item) => TierVendor.GossipOnHello(player, creature));
RegisterCreatureGossipEvent(Tier2Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_SELECT, (_: GossipEvents.GOSSIP_EVENT_ON_SELECT, player: Player, creature: Player | Creature | GameObject | Item, __: number, intId: number, ___: string, ____?: number) => Tier2Vendor.GossipOnSelect(player, creature, intId));

RegisterCreatureGossipEvent(Tier3Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_HELLO, (_: GossipEvents.GOSSIP_EVENT_ON_HELLO, player: Player, creature: Creature | GameObject | Item) => TierVendor.GossipOnHello(player, creature));
RegisterCreatureGossipEvent(Tier3Vendor.GetEntry(), GossipEvents.GOSSIP_EVENT_ON_SELECT, (_: GossipEvents.GOSSIP_EVENT_ON_SELECT, player: Player, creature: Player | Creature | GameObject | Item, __: number, intId: number, ___: string, ____?: number) => Tier3Vendor.GossipOnSelect(player, creature, intId));

RegisterPlayerEvent(PlayerEvents.PLAYER_EVENT_ON_LOGIN, (_: PlayerEvents.PLAYER_EVENT_ON_LOGIN, player: Player) => GMLogin(player));
print("[mod-tier-vendors]: Loaded");