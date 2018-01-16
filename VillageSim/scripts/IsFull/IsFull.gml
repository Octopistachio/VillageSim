/// @description Returns true if the inventory is full

if(oInventory.inventorySlots == ds_list_size(global.inventory_ds_list)) return true;
else return false;