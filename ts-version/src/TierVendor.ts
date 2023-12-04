import { PlayerClass } from "./Classes";
import { TierVendorGossipEvent } from "./TierVendorGossipEvents";
export class TierVendor {
    constructor(private readonly entry: number, private readonly itemVendor: number, private readonly classVendors: { [key: number]: number }) { }

    GetClassVendorEntry(player: Player) {
        const playerClass = player.GetClass();
        const vendorId = this.classVendors[playerClass];
        return vendorId;
    }

    ShowGenericItems(player: Player, creature: Player | Creature | GameObject | Item) {
        const anyPlayer = player as any; /// Hack until fixed in the definitions
        anyPlayer.SendListInventory(creature, this.itemVendor);
    }

    ShowClassItems(player: Player, creature: Player | Creature | GameObject | Item) {
        const classVendorId = this.GetClassVendorEntry(player);
        const anyPlayer = player as any; /// Hack until fixed in the definitions
        anyPlayer.SendListInventory(creature, classVendorId);
    }

    GetEntry = () => this.entry;

    public static GossipOnHello(player: Player, creature: Creature | GameObject | Item) {
        player.GossipClearMenu();
        if (player.GetClass() != PlayerClass.CLASS_DEATHKNIGHT)
            player.GossipMenuAddItem(1, "Buy Class Set", 1, TierVendorGossipEvent.SHOW_CLASS_SET);

        player.GossipMenuAddItem(1, "Buy Raid Items", 1, TierVendorGossipEvent.SHOW_GENERIC_ITEMS);

        player.GossipMenuAddItem(1, "Close", 1, TierVendorGossipEvent.CLOSE_GOSSIP);
        player.GossipSendMenu(1, creature, 1);

        return true;
    }

    GossipOnSelect(player: Player, creature: Player | Creature | GameObject | Item, intId: number) {
        switch (intId) {
            case TierVendorGossipEvent.SHOW_CLASS_SET:
                this.ShowClassItems(player, creature);
                break;

            case TierVendorGossipEvent.SHOW_GENERIC_ITEMS:
                this.ShowGenericItems(player, creature);
                break;

            case TierVendorGossipEvent.CLOSE_GOSSIP:
                player.GossipComplete();
                break;
        }

        return true;
    }
}